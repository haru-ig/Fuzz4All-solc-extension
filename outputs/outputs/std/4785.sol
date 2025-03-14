pragma solidity ^0.8.0;
contract Mod {
  G[] public g;
  function mod() public {
    g.push(g[0]);
    g.push(g[0]);
  }
}
