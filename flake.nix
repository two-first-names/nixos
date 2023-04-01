{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11";
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations = {
      vault = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./common
          ./hosts/vault.nix
        ];
      };
    };
  };
}
