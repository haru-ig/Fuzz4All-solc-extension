pragma solidity ^0.8.0;
contract MyContract {
  uint256[1000000][100000][1000] storage a;

  function test() public {
    a.length;
    a[1000000][1000000][1000].length;
  }
}
