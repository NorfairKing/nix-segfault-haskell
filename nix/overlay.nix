final:
  previous:
    with final.haskell.lib;
    {
      haskellPackages = previous.haskellPackages.extend (
        self:
          super:
           { segfault = super.callCabal2nix "segfault" ../. {}; }
      );
    }
