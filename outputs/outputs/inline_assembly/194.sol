pragma solidity ^0.8.0;
contract E7H {
  uint16 x = 0xabcd;
  mapping (address => int) map;
  function g(address x) public returns (int) {
    return map[x];
  }
  function put(address x, int y) public returns (address z) {
    z = x;
    map[z] = y;
    return z;
  }
}
