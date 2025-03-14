pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample24 {
  struct Mutated {
      uint256 x;
  }
  function main() public pure {
      Mutated memory x;
      x.x=x.x+x.x;
      x.y=x.y+x.y;


      x.x+=2;
      x.x+=x.y;
      x.y+=2;
      x.y+=x.y;
  }
}
contract MutatedSemanticallyEquivalentAssemblyExample25 {
  struct Mutated {
      uint256 x;
  }
  function main() public pure {
      Mutated memory x;
      x.x=x.x+x.x;
      x.y=x.y+x.y;


      x.x+=x
