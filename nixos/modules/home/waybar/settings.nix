{ ... }:

{
  programs.waybar.settings = [{
    modules-left = [
      "hyprland/workspaces"
    ];
    modules-center = [
      "clock"
    ];
    modules-right = [
      "cpu"
      "memory"
    ];
    "hyprland/workspaces" = {
      format = "{}";
    };
    clock = {
      format = "{:%Y-%m-%d %H:%M}";
    };
    cpu = {
      format = " {usage}%";
    };
    memory = {
      format = " {used:0.1f}G/{total:0.1f}G";
    };
  }];
}
