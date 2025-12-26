{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";

    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, ... } @inputs:
  let
    system = "x86_64-linux";
    pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
  in
  {
    nixosConfigurations.Levi-NixOS = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs; inherit pkgs-unstable;};
      modules = [ 
        ./Hosts/Levi-NixOS.nix

        home-manager.nixosModules.home-manager {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            extraSpecialArgs = {inherit inputs; inherit pkgs-unstable;};
            backupFileExtension = "HomeManagerBackup";
            users = {
              callum = import ./HomeManager/Users/callum.nix;
            };
          };
        }
      ];
    };
    nixosConfigurations.Levi-Omen = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs; inherit pkgs-unstable;};
      modules = [ 
        ./Hosts/Levi-Omen.nix

        home-manager.nixosModules.home-manager {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            extraSpecialArgs = {inherit inputs; inherit pkgs-unstable;};
            backupFileExtension = "HomeManagerBackup";
            users = {
              callum = import ./HomeManager/Users/callum.nix;
            };
          };
        }
      ];
    };
  };
}