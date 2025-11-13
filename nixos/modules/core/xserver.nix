{ username, ... }:

{
  services = {
    xserver.enable = true;
    displayManager.gdm.enable = true;
    xserver.xkb = {
      layout = "us";
      variant = "";
    };
  };
}
