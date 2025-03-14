pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample27 {
  struct Mutated {
      uint256 x;
      uint z;
  }
  function main() public pure {
      Mutated memory x;
      x.z=x.x;
      x.z=x.x;
      x.z=x.x;
      x.z=x.x;
      x.z=x.x;
      x.x=x.x;
      x.x=x.x;
      x.x=x.x;
      x.x=x.x;
      x.x=x.x;
      x.x=x.x;
      x.x=x.x;
      x.x=x.x;
      x.x=x.x;
  }
}
