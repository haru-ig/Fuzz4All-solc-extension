pragma solidity ^0.8.0;
contract NonMutatedSemanticallyEquivalentAssemblyExample26 {
  struct NonMutated {
      uint256 x;
      uint256 y;
  }
  function main() public pure {
      NonMutated memory x;
      for (uint256 i=0;i<1;i++){
          x.x=x.x;
      }
      x.x=x.x+x.x;
      x.x=x.x+x.x;
      y.x=y.x+y.x;
      y.x=y.x+y.x;
  }
}
