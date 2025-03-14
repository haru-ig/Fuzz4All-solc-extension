pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample {
  struct SemanticallyEquivalent {
      uint x;
      uint y;
      uint z;
      uint w;
      uint8 x1;
      uint8 y1;
      uint8 z1;
  }
  function semanticEquivalent(SemanticallyEquivalent memory a) public pure returns (SemanticallyEquivalent memory) {
      SemanticallyEquivalent memory b;
      b.x=a.x*2;
      b.y=a.y;
      b.x=a.x*2;
      b.x=a.x*2;
      b.x=a.x*2;
      b.x=a.x*2;
      b.x=a.x*2;
      b.x=a.x*2;
      return b;
  }
}

contract SemanticallyEquivalentAssemblyExample7 {
  struct SemanticallyEquivalent {
      uint x;
      uint y;
  }
  function semanticEquivalent(SemanticallyEquivalent memory a) public pure returns (SemanticallyEquivalent memory) {
      SemanticallyEquivalent memory b;
      b.x=a.x*2;
      b.x=a.x;
      b.x=a.x*2;
  }
}
