{ pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    settings.monitor = [
      "DP-2, 1920x1080@120, -1080x0, 1, transform, 1"
      "DP-1, 1920x1080@120, 0x0, 1"
    ];
  };

  home.packages = with pkgs; [ nwg-displays ];
}
