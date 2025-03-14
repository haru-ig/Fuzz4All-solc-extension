pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample24 {
  struct Mutated {
      uint256 x;
      uint256 y;
  }
  function main() public pure {
      Mutated memory x;
      x.y++;
      x.y=x.x+x.y;
      x.x=x.x+x.x;
      x.x=x.y+x.x;
      x.x=x.x+x.x;
      x.x=x.x+x.x;
      x.x=x.x+x.x;
      x.x=x.x+x.x;
      x.x=x.x+x.x;
      x.x=x.x+x.x;
  }
}
