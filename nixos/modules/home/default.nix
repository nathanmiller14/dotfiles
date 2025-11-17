{ pkgs, ... }:

{
  imports = [
    ./fastfetch/default.nix
    ./ghostty/default.nix
    ./hyprland/default.nix
    ./zsh/default.nix
    ./nvim/nvim.nix
    ./rofi/rofi.nix
    ./browser/firefox.nix
    ./github/github.nix
    ./waybar/default.nix
    ./obsidian/obsidian.nix
  ];

/*
 packages = with pkgs; [
	  
 
	  nwg-look
    
	  
	  waybar
	  
	  obsidian
	  git
	  -
	  yazi
	  btop
	  
	  waypaper
    neofetch
    ];
    */
}
