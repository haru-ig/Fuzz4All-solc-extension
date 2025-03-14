pragma solidity ^0.8.0;
struct Immutable {
  uint256 x;
}
contract MutatedSemanticallyEquivalentAssemblyExample12 {
    function main() public pure {
        Immutable memory x;
        x.x++;
        assembly {x.x := x.x + 1}
        x.x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample13 {
  struct Mutated {
      uint256 x;
  }
  function main() public pure {
      Mutated memory x;
      x.x++;
      x.x++;
  }
}

pragma solidity 0.8.1;
