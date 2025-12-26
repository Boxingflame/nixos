{ config, pkgs, ... }:

{
  fonts.packages = with pkgs; [
    corefonts
    vista-fonts
    # nerd-fonts.meslo-lg # 25.05 pkg
    noto-fonts
    noto-fonts-emoji
  ];
}