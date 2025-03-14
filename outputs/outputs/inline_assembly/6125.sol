pragma solidity ^0.8.0;
contract NonMutatedSemanticallyEquivalentAssemblyExample26 {
  struct NonMutated {
      uint256 x;
      uint256 y;
  }
  function main() public pure {
      NonMutated memory x;
      NonMutated memory y;
      x.x=x.x+x.y;
      x.x=x.x+y.y;
      x.x=x.x+x.y;
      y.x=y.x+x.y;
      x.y=x.y+y.x;
      x.y=x.y+x.x;
      y.y=y.y+x.x;
  }
}
