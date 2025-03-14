pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample36 {
  struct Mutated {
      uint w;
      uint x;
      uint y;
      uint z;
      uint8 x1;
      uint8 y1;
      uint8 z1;
  }
  function main() public pure {
      Mutated memory x;
      x.w=x.w*2;
      x.x=x.x*2;
      x.y=x.y*2;
      x.z=x.z*2;
      x.w=x.w*2;
      x.x=x.x*2;
      x.y=x.y*2;
      x.z=x.z*2;
      x.w=x.w*2;
      x.x=x.x*2;
  }
}
