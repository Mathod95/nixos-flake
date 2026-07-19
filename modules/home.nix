{ config, pkgs, ... }:

{
  imports = [
    ./fastfetch/fastfetch.nix
    ./git/git.nix
  #  ./home/zellij/zellij.nix
  #  ./home/zsh/zsh.nix
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