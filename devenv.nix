{
  pkgs,
  inputs,
  ...
}: let
  pkgs-unstable = import inputs.nixpkgs-unstable {
    inherit (pkgs.stdenv.hostPlatform) system;
  };
in {
  # https://devenv.sh/packages/
  packages = [pkgs.git];

  languages.javascript = {
    enable = true;
    package = pkgs.nodejs_22;
    pnpm = {
      enable = true;
      package = pkgs-unstable.pnpm_11;
      install.enable = true;
    };
  };
}
