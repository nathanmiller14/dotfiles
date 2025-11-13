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

  wayland.windowManager.hyprland.settings.exec-once = [
    "waybar &"
    "swww-daemon &"
  ];
}
