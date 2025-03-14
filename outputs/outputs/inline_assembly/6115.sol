pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample25 {
  struct Mutated {
      uint256 x;
      uint256 y;
  }
  function main() public pure {
      Mutated memory x;
      x.x++;
      x.y--=x.y;
      x.y-=x.y;
      x.y-=x.y;
      while(x.y==0){

      }
  }
}
