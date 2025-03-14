pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample27 {
  struct Mutated {
      uint256 x;
      uint256 y;
      uint256 z;
  }
  function main() public pure {
      Mutated memory x;
      x.x=x.x*2;
      x.x=x.x*2;
      x.x=x.x*2;
      x.y=x.y*2;
      x.y=x.y*2;
      x.y=x.y*2;
      x.x=x.x*2;
      x.x=x.x*2;
      x.x=x.x*2;
      x.y=x.y*2;
      x.y=x.y*2;
      x.y=x.y*2;
  }
}
