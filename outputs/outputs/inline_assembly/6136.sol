pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample27 {
  struct Mutated {
      uint256 z;
      uint256 x;
      uint256 y;
  }
  function main() public pure {
      Mutated memory x;
      x.z=x.z+x.y;
      x.z=x.z+x.y;
      x.z=x.z+x.y;
      x.z=x.z+x.y;
      x.z=x.z+x.y;
      x.z=x.z+x.y;
      x.y=x.y+x.z;
      x.y=x.y+x.z;
      x.y=x.y+x.z;
      x.y=x.y+x.z;
      x.y=x.y+x.z;
      x.y=x.y+x.z;
      x.x=x.x+x.z;
      x.x=x.x+x.z;
      x.x=x.x+x.z;
      x.x=x.x+x.z;
      x.x=x.x+x.z;
      x.x=x.x+x.z;
  }
}
