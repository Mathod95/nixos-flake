{ config, pkgs, ... }:

{
  #imports = [
  #  ./home/fastfetch/fastfetch.nix
  #  ./home/zellij/zellij.nix
  #  ./home/zsh/zsh.nix
  #  ./packages/packages.nix
  #];

  home.username = "mathod";
  home.homeDirectory = "/home/mathod";
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    vim
    git
    bat
    fastfetch
    btop
    zellij
  ];

  programs.home-manager.enable = true;
}