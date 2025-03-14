pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample12 {
    struct Mutated {
        uint256 x;
    }
    function main() public pure {
        Mutated memory x;
        x.x+=2;
        x.x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample13 {
  struct Mutated {
      uint256 x;
  }
  function main() public pure {
      Mutated memory x;
      x.x+=2;
      x.x++;
  }
}
