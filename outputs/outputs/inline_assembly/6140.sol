pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample28 {
  struct Mutated {
      uint256 x;
      uint256 x2;
      uint256 y;
      uint256 y2;
      uint256 z;
      uint256 z2;
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
      x.z=x.z*2;
      x.z=x.z*2;
      x.z=x.z*2;
      x.x=x.x*2;
      x.x=x.x*2;
      x.x=x.x*2;
      x.x=x.x*2;
      x.x=x.x*2;
      x.x=x.x*2;
      x.x=x.x*
