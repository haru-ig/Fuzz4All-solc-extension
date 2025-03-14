pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample12 {
    function main() public pure {
        Immutable memory x;
        x.x++;
        x.x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample13 {
  struct Mutated {
      uint256 x;
  }

  function main() public pure {

      x.x++;
      x.x++;
  }
}
