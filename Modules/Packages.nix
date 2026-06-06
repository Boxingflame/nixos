{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vulkan-tools
    lact
    mesa-demos
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
    protontricks
    winetricks
    wineWow64Packages.stagingFull
    
    #sort later
    kdePackages.qtmultimedia
  ];
}