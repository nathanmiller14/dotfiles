{ ... }:

{
  imports = [
    ./bootloader.nix
    ./network.nix
    ./pipewire.nix
    ./security.nix
    ./services.nix
    ./system.nix
    ./user.nix
    ./wayland.nix
    ./xserver.nix
    ./program.nix
  ];
}
