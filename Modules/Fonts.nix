{ config, pkgs, ... }:

{
  fonts.packages = with pkgs; [
    corefonts
    vista-fonts
    noto-fonts
    noto-fonts-color-emoji
    nerd-fonts.symbols-only
    ibm-plex
  ];
}