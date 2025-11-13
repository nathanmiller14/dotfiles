{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, self, ... }@inputs:
    # use "nixos", or your hostname as the name of the configuration
    # it's a better practice than "default" shown in the video

    let
      username = "nathan";
    	system = "x86_64-linux";
	    pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      lib = nixpkgs.lib;
    in
    {
	  nixosConfigurations = {
		  desktop = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [ ./hosts/desktop ];
        specialArgs = {
          host = "desktop";
          inherit self inputs username;
        };
      };
    };
  };
}
