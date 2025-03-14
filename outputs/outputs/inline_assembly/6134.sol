pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample26 {
  struct Mutated {
      uint256 x;
      uint256 y;
      uint256 z;
  }
  function main() public pure {
      Mutated memory x;
      x.x=x.x+x.y;
      x.x=x.x+x.y;
      x.x=x.x+x.y;
      x.y=x.y+x.y;
      x.y=x.y+x.x;
      x.y=x.y+x.x;
      x.x=x.x+x.y;
      x.x=x.x+x.y;
      x.x=x.x+x.y;
      x.y=x.y+x.y;
      x.y=x.y+x.y;
      x.y=x.y+x.y;
  }
}
