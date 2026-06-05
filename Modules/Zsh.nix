{ config, pkgs, ... }:

let
  zshInit =
    with pkgs;
    writeShellApplication {
      name = "zshInitScript";
      runtimeInputs = [ fastfetch ];
      text = ''
        set +u
        if [[ -n "$SSH_TTY" ]]; then
          fastfetch
        else
          exit 0
        fi
      '';
    };
in
{
  users.defaultUserShell = pkgs.zsh;
  environment.shells = with pkgs; [ zsh ];
  programs = {
    zsh = {
      enable = true;
      autosuggestions.enable = true;
      syntaxHighlighting.enable = true;
      enableLsColors = true;
      shellInit = "fastfetch";
      histSize = 1000;
      shellAliases = {
        update = "sudo nixos-rebuild switch -L --refresh --flake github:Boxingflame/nixos";
        updateb = "sudo nixos-rebuild boot -L --refresh --flake github:Boxingflame/nixos";
      };
      ohMyZsh = {
        enable = true;
        theme = "gallois";
        plugins = [
          "git"
          "history"
        ];
      };
    };
  };
}