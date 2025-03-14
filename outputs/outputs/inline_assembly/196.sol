pragma solidity ^0.8.0;
contract E1H {
  uint16 x = 0xabcd;
  mapping (address => int) map;
  constructor() public {
    map[msg.sender] = 0;
  }
  function put(address x, int y) public {
    map[x] = y;
  }
  function g(address x) public returns (int) {
    return map[x];
  }
}
