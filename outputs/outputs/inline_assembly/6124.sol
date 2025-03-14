pragma solidity ^0.8.0;
contract NonMutatedSemanticallyEquivalentAssemblyExample24 {
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
