{ config, pkgs, ... }:

{
  imports = [
    ./nvim.nix
  ];

  home.username = "hiro";
  home.homeDirectory = "/Users/hiro";

  home.stateVersion = "26.05"; # Please read the comment before changing.

  home.packages = with pkgs; [
      git
      starship
      zellij
      lazygit
      bat
      ghq
      gh
      atuin
      jq
      lsd
      tree-sitter
      xcodegen
      zsh-autosuggestions
      zsh-syntax-highlighting
      ripgrep
      mise
      herdr
  ];

  # XDG対応
  xdg.configFile = {
      "git/config".source = ./git/config;
      "git/ignore".source = ./git/ignore;
      "zsh/.zshrc".source = ./zsh/.zshrc;
      "zsh/.zprofile".source = ./zsh/.zprofile;
      "starship.toml".source = ./starship/starship.toml;
      "ghostty/config".source = ./ghostty/config;
      "zellij/config.kdl".source = ./zellij/config.kdl;
      "lazygit/config.yml".source = ./lazygit/config.yml;
      "gh/config.yml".source = ./gh/config.yml;
      "atuin/config.toml".source = ./atuin/config.toml;
  };

  # XDG非対応
  home.file = {
      ".zshenv".source = ./zsh/.zshenv;
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
