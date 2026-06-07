{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = {
    nixpkgs,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {
        inherit system;
      };
      inherit (pkgs) stdenv pnpmConfigHook;
      wrapper = pkgs.makeWrapper;
      nodejs = pkgs.nodejs-slim_22;
      pnpm = pkgs.pnpm_11;

      name = "iw2tryhard-dev";
      port = "3000";
      bin = stdenv.mkDerivation (finalAttrs: {
        pname = name;
        version = "3.0";

        src = ./.;

        nativeBuildInputs = [
          pnpm
          nodejs
          pnpmConfigHook
          wrapper
        ];

        pnpmDeps = pkgs.fetchPnpmDeps {
          inherit (finalAttrs) pname version src;
          inherit pnpm;
          fetcherVersion = 4;
          hash = "sha256-j1LBzIbYn3NzET9eHFeHTsROqSvzVrZJVUYZ3dhfFeM=";
        };

        buildPhase = ''
          runHook preBuild

          export NUXT_TELEMETRY_DISABLED=1
          pnpm run build

          runHook postBuild
        '';

        installPhase = ''
          runHook preInstall

          mkdir -p $out
          mkdir -p $out/bin
          cp -r .output/* $out/

          cat << 'EOF' > $out/bin/start
          #!${pkgs.stdenv.shell}
          export NODE_EXTRA_CA_CERTS=${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt
          exec ${nodejs}/bin/node __OUTDIR__/server/index.mjs
          EOF
          sed -i "s|__OUTDIR__|$out|g" $out/bin/start
          chmod +x $out/bin/start

          runHook postInstall
        '';
      });
      v2 = pkgs.callPackage ./v2.nix {inherit pkgs stdenv;};
      start_script = "${bin}/bin/start";
      start_v2_script = "${v2}/start";
    in {
      packages = {
        inherit bin;
        bin_v2 = v2;

        docker = pkgs.dockerTools.streamLayeredImage {
          inherit name;
          tag = "latest";
          contents = [
            pkgs.fakeNss
            pkgs.cacert
          ]; # <--
          config = {
            Cmd = [start_script];
            ExposedPorts = {
              "${port}/tcp" = {};
            };
          };
        };
        docker_v2 = pkgs.dockerTools.streamLayeredImage {
          name = "thaddev.com-2.0";
          tag = "latest";
          config = {
            Cmd = [start_v2_script];
            ExposedPorts = {
              "${port}/tcp" = {};
            };
          };
        };
      };

      apps.bin = {
        type = "app";
        program = start_script;
      };
      apps.bin_v2 = {
        type = "app";
        program = start_v2_script;
      };
    });
}
