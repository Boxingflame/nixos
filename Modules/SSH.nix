{ config, ... }:

{
  services.openssh = {
    enable = true;
    ports = [ 22 ];
    settings = {
      UseDns = true;
      X11Forwarding = false;
      PermitRootLogin = "no";
    };
  };
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 22 ];
  };
}
