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
      x.x=2*x.x;
      x._0=2*x._0;
      x.x=2*x.x;
      x.x=2*x.x;
      x.x=_0*2*x.x;
      x.x=_0*2*x.x;
      x.x=_0*2*x.x;
  }
}

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
      uint224 x_0;
      x.x=2*x.x;
      _0=2*x._0;
      x.x=2*x.x;
      x.x=2*x.x;
      x.x=_0*2*x.x;
      x.x=_0*2*x.x;
      x.x=_0*2*x.x;
      x_0=uint224(2*uint(0));
      _0=uint224(2*uint(0));
      x.x=_0*2*x_0;
      x.x=_0*2*x.x;
      x_0=uint224(2*uint(0));
      _0=uint224(2*uint(0));
      x.x=_0*2*x_0;
      x.x=_0*2*x.x;
      x.x=_0*2*x.x;
  }
}
