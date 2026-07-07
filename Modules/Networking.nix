{ pkgs, ... }:

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
    extraHosts = '' 
      127.0.0.1 paradise-s1.battleye.cnom
      127.0.0.1 test-s1.battleye.com
      127.0.0.1 paradiseenhanced-s1.battleye.com
    '';
  };
}