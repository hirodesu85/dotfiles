{ config, pkgs, ... }:

{
  home.username = "hiro";
  home.homeDirectory = "/Users/hiro";

  home.stateVersion = "26.05"; # Please read the comment before changing.

  home.packages = with pkgs; [
    git
  ];

  # XDG対応
  xdg.configFile = {
      "git/config".source = ./git/config;
      "git/ignore".source = ./git/ignore;
  };

  # XDG非対応
  home.file = {
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
