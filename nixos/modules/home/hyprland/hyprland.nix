{ pkgs, ... }:

{
  home.packages = with pkgs; [
    swww
    wayland
    hyprcursor
  ];

  wayland.windowManager.hyprland = {
    enable = true;

    xwayland = {
      enable = true;
    };

    systemd.enable = true;

    extraConfig = ''
      env = LIBVA_DRIVER_NAME,nvidia
      env = XDG_SESSION_TYPE,wayland
      env = GBM_BACKEND,nvidia-drm
      cursor {
        no_hardware_cursors = true
        use_cpu_buffer = true
      } 
    '';
  };

  home.pointerCursor = {
    gtk.enable = true;

    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 16;
  };


  gtk = {
    enable = true;

    theme = {
      package = pkgs.flat-remix-gtk;
      name = "Flat-Remix-GTK-Grey-Darkest";
    };

    iconTheme = {
      package = pkgs.adwaita-icon-theme;
      name = "Adwaita";
    };

    font = {
      name = "Sans";
      size = 11;
    };
  };
}
