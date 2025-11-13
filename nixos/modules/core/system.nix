{ pkgs, ... }:

{
  nix.settings.experimental-features = ["nix-command" "flakes"];

  environment.systemPackages = with pkgs; [
    wget
    git
  ];

  time.timeZone = "America/Detroit";
  i18n.defaultLocale = "en_US.UTF-8";
  system.stateVersion = "25.05";
  nixpkgs.config.allowUnfree = true;
}
