{ pkgs, ... }:

{
  imports = [
    ./fastfetch/default.nix
    ./ghostty/default.nix
    ./hyprland/default.nix
    ./zsh/default.nix
    ./nvim.nix
    ./rofi/rofi.nix
    ./browser/firefox.nix
    ./github/github.nix
  ];

/*
 packages = with pkgs; [
	  
    firefox-devedition
	  nwg-look
    
	  rofi
	  waybar
	  neovim
	  obsidian
	  git
	  github-desktop
	  yazi
	  btop
	  
	  waypaper
    neofetch
    ];
    */
}
