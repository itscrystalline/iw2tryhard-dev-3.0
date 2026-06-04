{
  stdenv,
  pkgs,
}: let
  inherit (pkgs) fetchFromGitHub fetchYarnDeps yarnConfigHook yarnBuildHook yarnInstallHook;
  nodejs = pkgs.nodejs_22;
in
  stdenv.mkDerivation (finalAttrs: rec {
    pname = "iw2tryhard-dev-v2";
    version = "ff5c582";

    src = fetchFromGitHub {
      owner = "itscrystalline";
      repo = "thaddev.com-2.0";
      rev = "${version}";
      hash = "sha256-rtkNq1mECLVPLoq/6docdIWX3TcnRwwfjtdN2RtxDC4=";
    };
    yarnOfflineCache = fetchYarnDeps {
      yarnLock = finalAttrs.src + "/yarn.lock";
      hash = "sha256-M4UVifmjNN+c9wci9liMJyw/WjltoTnGMdGAZoKhkrI=";
    };
    nativeBuildInputs = [
      yarnConfigHook
      yarnBuildHook
      yarnInstallHook
      nodejs
    ];
    buildInputs = [
    ];

    buildPhase = ''
      runHook preBuild

      yarn build

      runHook postBuild
    '';

    installPhase = ''
      runHook preInstall

      mkdir -p $out
      cp -r ./* $out/
      cp -r .next $out/

      cat << 'EOF' > $out/start
      #!${pkgs.stdenv.shell}
      cd __OUTDIR__
      exec ${nodejs}/bin/npm run start
      EOF
      sed -i "s|__OUTDIR__|$out|g" $out/start
      chmod +x $out/start

      runHook postInstall
    '';
  })
