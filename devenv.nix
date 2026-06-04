{pkgs, ...}: {
  # https://devenv.sh/packages/
  packages = [pkgs.git];

  languages.javascript = {
    enable = true;
    pnpm.enable = true;
    pnpm.install.enable = true;
  };
}
