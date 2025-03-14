pragma solidity ^0.8.0;
contract SemanticallyEquivalentGenericAssemblyExample {
  function main() public pure {
      SemanticallyEquivalent memory x = SemanticallyEquivalent(0, 0, 0, 0);
      x.x=x.x*2;
      x.y=x.y;
      x.x=x.x*2;
      x.x=x.x*2;
      x._0=x._0*2;
      x.x=x.x*2;
      x.x=x.x*2;
  }
}
contract NotSemanticallyEquivalentAssemblyExample {
  struct NotSemanticallyEquivalent {
      uint x;
      uint y;
      uint z;
      uint _0;
      uint96 x1;
      uint96 y1;
      uint96 z1;
  }
  function main() public pure {
      NotSemanticallyEquivalent memory x;
      x.x=x.x*2;
      x.y=x.y;
      x.x=x.x*2;
      x.x=x.x*2;
      x._0=x._0*2;
      x.x=x.x*2;
      x.x=x.x*2;
  }
}

contract NotSemanticallyEquivalentGenericAssemblyExample {
  function main() public pure {
      NotSemanticallyEquivalent memory x = NotSemanticallyEquivalent(0, 0, 0, 0);
      x.x=x.x*2;
      x.y=x.y;
      x.x=x.x*2;
      x.x=x.x*2;
      x._0=x._0*2;
      x.x=x.x*2;
      x.x=x.x*2;
  }
}
