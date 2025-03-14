pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample29 {
  struct SemanticallyEquivalent {
      uint x;
      uint y;
      uint z;
      uint8 x1;
      uint z1;
  }
  function main() public pure returns (SemanticallyEquivalent) {
      SemanticallyEquivalent memory x;
      x.x=x.x*2;
      x.y=x.y;
      x.z=x.x;
      x.x=x.x*2;
      x.x=x.x*2;
      x.x=x.x*2;
      x.x=x.x*2;
      x.x=x.x*2;
      return x;
  }
}
