{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {
        inherit system;
      };
      # lib = pkgs.lib;
      stdenv = pkgs.stdenv;
      wrapper = pkgs.makeWrapper;
      nodejs = pkgs.nodejs_20;
      pnpm = pkgs.pnpm_9;

      name = "iw2tryhard-dev";
      port = "3000";
      bin = stdenv.mkDerivation (finalAttrs: {
        pname = name;
        version = "3.0";

        src = ./.;

        buildInputs = [nodejs];
        nativeBuildInputs = [
          nodejs
          pnpm.configHook
          wrapper
        ];

        pnpmDeps = pnpm.fetchDeps {
          inherit (finalAttrs) pname version src;
          hash = "sha256-pYBO63bEiIgPu57L0/tZ79EPvFW7soOEe1dcO/m2WNA=";
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
          exec ${nodejs}/bin/node __OUTDIR__/server/index.mjs
          EOF
          sed -i "s|__OUTDIR__|$out|g" $out/bin/start
          chmod +x $out/bin/start

          runHook postInstall
        '';
      });
      start_script = "${bin}/bin/start";
    in {
      packages.bin = bin;
      apps.bin = {
        type = "app";
        program = start_script;
      };

      packages.docker = pkgs.dockerTools.buildLayeredImage {
        name = name;
        tag = "latest";
        contents = [nodejs]; # <--
        config = {
          Cmd = start_script;
          ExposedPorts = {
            "${port}/tcp" = {};
          };
        };
      };
    });
}
