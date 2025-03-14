pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample25 {
  struct Mutated { uint256 x; }
  function main() public pure {
      Mutated memory x;
      x.x++;
      x.x=x.x;
      x.x=x.x+x.x;
      x.x+=x.x;
      x.x+=x.x;
      x.x=x.x;
      x.x=x.x+x.x;
      x.x+=x.x;
      x.x+=x.x;
      x.x++;
      x.x++;
      x.x++;
  }
}
