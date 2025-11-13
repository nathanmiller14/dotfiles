{ ... }:

{
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$mainMod, Q, exec, ghostty"
      "$mainMod, R, exec, rofi -show drun"

      "$mainMod, left, movefocus, l"
      "$mainMod, right, movefocus, r"
      "$mainMod, down, movefocus, u"
      "$mainMod, up, movefocus, d"

    ];
  };
}
