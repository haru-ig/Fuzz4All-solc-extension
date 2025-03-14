pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample25 {
  struct Mutation {
      uint256 x;
      uint256 y;
  }
  function main() public pure {
      Mutation memory x;
      x.x+=x.y/x.x;
      x.x=x.x-x.y;
      x.x=x.x+x.y/x.x;
      x.x+=x.x;
      x.x+=x.x;
      x.x+=x.x;
      x.x+=x.x;
      x.x+=x.x-x.y/x.x;
      x.x+=x.x;
      x.x=x.x-x.y;
      x.x++;
  }
}
