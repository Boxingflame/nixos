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
      user = "callum";
    };
  };

  systemd.user.services.plasma-xdg-desktop-portal-kde = {
    enable = true;
  };

  security.pam.services.login.enableKwallet = true;
}