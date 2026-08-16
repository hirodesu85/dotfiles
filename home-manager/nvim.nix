{ config, pkgs, ... }:
{
  programs.nixvim = {
    enable = true;
    colorschemes.tokyonight.enable = true;
    opts = {
      number = true;
      relativenumber = true;
    };
  };
}
