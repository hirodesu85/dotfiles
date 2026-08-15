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
      "zsh/.zshrc".source = ./zsh/.zshrc;
      "zsh/.zprofile".source = ./zsh/.zprofile;
  };

  # XDG非対応
  home.file = {
      ".zshenv".source = ./zsh/.zshenv;
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
