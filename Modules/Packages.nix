{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vulkan-tools
    lact
    glxinfo
    fastfetch
    git
    wget
    pciutils
    btop
    vlc
    vesktop
    prism-overlayed
    lutris-overlayed
    heroic
    beammp-launcher
    packwiz
    zulu
    vscode
    nexusmods-app-unfree
    protontricks
    winetricks
    wineWowPackages.stagingFull
    
    #sort later
    kdePackages.qtmultimedia
  ];
}