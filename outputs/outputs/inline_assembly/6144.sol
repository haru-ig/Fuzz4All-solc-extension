pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample28 {
  struct Mutated {
      uint x;
      uint y;
      uint z;
      uint w;
      uint8 x1;
      uint8 y1;
      uint8 z1;
  }
  function main() public pure {
      Mutated memory x;
      x.x=x.x*2;
      x.y=x.y*2;
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
      x.x=x.x*2;
      x.x=x.x*2;
  }
}
