{ pkgs, ... }:
{
  #home.packages = [ pkgs.just ];

  # Déploie le justfile global dans ~/.config/just/justfile
  xdg.configFile."just/justfile".source = ./justfile;

  # Force `just` à toujours utiliser ce fichier, peu importe le dossier courant
  # (désactive la recherche de justfile local par projet)
  home.sessionVariables = {
    JUST_JUSTFILE = "$HOME/.config/just/justfile";
  };
}