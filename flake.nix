{
    description = "Ecorous Desktop setup";
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        home-manager = {
            url = "github:nix-community/home-manager/master";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        hyprland.url = "github:HyperWM/Hyprland";
    };
    outputs = {self, nixpkgs, home-manager, hyprland}: {
        nixosConfigurations = {
            desktop = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                modules = [
                    ./configuration.nix
                    home-manager.nixosModules.home-manager
                    hyprland.homeManagerModules.default
                ];
            };
        };
    };
}