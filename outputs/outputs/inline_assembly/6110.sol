pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample24 {
  struct Mutated {
      uint256 x;
  }

    Mutated memory x;


  function main() public pure {
      Mutated memory y;

      y.x=x.x;
      y.x+=2;
      y.x++;

      x.x=x.x+1;
      x.x+=2;
      x.x++;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample80 {
    struct Mutated {
        uint256 x;
    }
    function main() public pure {
        Mutated memory x;
        x.x+=2;
        x.x+=10;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample81 {
    struct Mutated {
        uint256 x;
    }
    function main() public pure {
        Mutated memory x;
        x.x+=2;
        x.
