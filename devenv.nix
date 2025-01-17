{ pkgs, lib, config, inputs, ... }:

{
  cachix.enable = false;

  # https://devenv.sh/packages/
  packages = [ pkgs.git ];

  languages.javascript = {
    enable = true;
    pnpm.enable = true;
    pnpm.install.enable = true;
  };
}
