{
  description = "Urchin ZMK Keyboard config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
    in
    {
      devShells."x86_64-linux".default = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [
          # Dependencies that should only exist in the build environment.
          act
        ];
      };
    };
}