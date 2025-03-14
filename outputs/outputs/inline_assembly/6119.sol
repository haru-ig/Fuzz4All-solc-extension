pragma solidity ^0.8.0;
contract NonMutatedSemanticallyEquivalentAssemblyExample24 {
  struct NonMutated {
      uint256 x;
      uint256 y;
  }
  function main() public pure {
      NonMutated memory x;
      x.x++;
      x.y++;
      x.x=x.x;
      x.x+=x.x;
      x.x=x.x+x.x;
      x.x+=x.x;
      x.x+=x.x;
      x.y=x.y+x.y;
      x.x=x.x+x.x;
  }
}
