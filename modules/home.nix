{ config, pkgs, ... }:

{
  imports = [
    ./fastfetch/fastfetch.nix
    ./git/git.nix
    ./just/just.nix
  #  ./zellij/zellij.nix
  #  ./zsh/zsh.nix
  #  ./packages/packages.nix
  ];

  home.username = "mathod";
  home.homeDirectory = "/home/mathod";
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    vim
    git
    just
    bat
    btop
    zellij
  ];

  programs.home-manager.enable = true;
}