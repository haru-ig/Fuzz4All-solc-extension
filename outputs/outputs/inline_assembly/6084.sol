pragma solidity ^0.8.0;
struct Immutable {
  uint256 x;
}
contract MutatedSemanticallyEquivalentAssemblyExample10 {
    function main() public pure {
        Immutable memory x;
        x.x++;
        x.x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample11 {

  struct Mutated {
      uint256 x;
  }
  function main() public pure {
      Mutated memory x;
      x.x++;
      x.x++;
  }

}
