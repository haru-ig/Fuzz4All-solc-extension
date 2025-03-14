pragma solidity ^0.8.0;
contract NonMutatedSemanticallyEquivalentAssemblyExample26 {
  struct NonMutated {
      uint256 x;
      uint256 y;
  }
  struct Mutated {
      uint256 x;
      uint256 y;
  }
  function main(Mutation memory x) public pure {
      x.y=x.y;
      x.x=x.x;
      uint256 z=x.x;
      x.x=0x0;
      uint256 y=x.y;
      y=x.y+y;
      x.x=x.x+0x0;
      NonMutated memory v;
      v.x=0x0;
      v.y=z;
      x.y=y;
  }
}
