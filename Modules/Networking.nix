{ ... }:

{
  networking = {
    networkmanager = {
      enable = true;
      plugins = with pkgs; [
        networkmanager-strongswan
      ];    };
    firewall = {
      enable = false;
      allowedTCPPorts = [
        6969
        25565
      ];
      allowedUDPPorts = [25565];
    };
  };
}