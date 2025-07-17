{ ... }:

{
  networking = {
    networkmanager = {
      enable = true;
      enableStrongSwan = true;
    };
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