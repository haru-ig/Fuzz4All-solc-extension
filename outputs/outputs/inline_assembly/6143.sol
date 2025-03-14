pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample27 {
  struct Mutated {
      uint256 x;
      uint256 y;
      uint256 z;
  }
  function main() public pure {
      Mutated memory y;
      y.x=y.x*2;
      y.x=y.x*2;
      y.x=y.x*2;
      y.y=y.y*2;
      y.y=y.y*2;
      y.y=y.y*2;
      y.x=y.x*2;
      y.x=y.x*2;
      y.x=y.x*2;
      y.y=y.y*2;
      y.y=y.y*2;
      y.y=y.y*2;
  }
}
