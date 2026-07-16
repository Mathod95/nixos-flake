{ config, lib, pkgs, ... }:

{
  system.stateVersion = "26.05";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  #programs.zsh.enable = true;

  users.users.mathod = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  #  shell = pkgs.zsh;
  };

  nixpkgs.config.allowUnfree = true;
}