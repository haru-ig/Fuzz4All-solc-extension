pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample27 {
  struct Mutated {
      uint256 x;
      uint256 y;
  }
  function main() public pure {
      Mutated memory x;
      Mutated memory y;
      x.x=x.x+x.y;
      x.x=x.x+y.y;
      x.x=x.x+x.y;
      x.y=x.y+x.x;
      x.y=x.y+x.x;
      y.y=y.y+x.x;
  }
}
