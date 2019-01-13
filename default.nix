let
  pkgsv = import (import ./nix/nixpkgs.nix);
  envs = import ./nix/environments.nix;
  pkgs = pkgsv {
      overlays = [ (import ./nix/overlay.nix) ];
      config.allowUnfree = true;
    };
in pkgs.haskellPackages.segfault
