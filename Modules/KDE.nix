{ ... }:

{
  services.desktopManager = {
    plasma6.enable = true;
  };

  services.displayManager = {
    sddm = {
      enable = true;
      wayland.enable = true;
    };
    autoLogin = {
      enable = true;
      user = ["callum"];
    };
  };
}