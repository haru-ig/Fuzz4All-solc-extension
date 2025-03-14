pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample27 {
  struct Mutated {
      Mutated storage parent;
      uint256 x;
      uint256 y;
      uint256 z;
  }
  function main() public pure {
      Mutated memory x;
      x.parent.x=x.parent.x+x.parent.y;
      x.parent.x=x.parent.x+x.parent.y;
      x.parent.x=x.parent.x+x.parent.y;
      x.parent.y=x.parent.y+x.parent.y;
      x.parent.y=x.parent.y+x.parent.y;
      x.parent.x=x.parent.x+x.parent.y;
      x.parent.x=x.parent.x+x.parent.y;
      x.parent.x=x.parent.x+x.parent.y;
      x.x=x.x+x.y;
      x.x=x.x+x.y;
      x.x=x.x+x.y;
      x.y=x.y+x.y;
      x.y=x.y+x.y;
      x.y=x.y+x.y;
  }
}
