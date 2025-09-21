{ config, ... }:

{
  imports = [
    ./Boot.nix
    ./Fonts.nix
    ./KDE.nix
    ./Networking.nix
    ./Overlays.nix
    ./Pipewire.nix
    ./Services.nix
    ./Systemd.nix
    ./Hardware.nix
    ./Locale.nix
    ./NixSettings.nix
    ./Packages.nix
    ./Programs.nix
    ./Users.nix
    ./WallpaperEngineKDEPlugin.nix
    ./Zsh.nix
  ];

  config.nixos.pkgs.wallpaper-engine-kde-plugin.enable = false;
}