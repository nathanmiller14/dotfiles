{ pkgs, ... }:

{
  home.packages = with pkgs; [
    swww
    wayland
  ];

  wayland.windowManager.hyprland = {
    enable = true;

    xwayland = {
      enable = true;
    };

    systemd.enable = true;
  };
}
