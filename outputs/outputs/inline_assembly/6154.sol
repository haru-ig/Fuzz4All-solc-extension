pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample {
  struct SemanticallyEquivalent {
      uint x;
      uint y;
      uint z;
      uint _0;
      uint8 x1;
      uint8 y1;
      uint8 z1;
  }
  function main() public pure {
      SemanticallyEquivalent memory x;
      x.x=x.x*2;
      x.y=x.y;
      x.x=x.x*2;
      x.x=x.x*2;
      x._0=x._0*2;
      x.x=x.x*2;
      x.x=x.x*2;
  }
}
