pragma solidity ^0.8.0;
contract E6H {
  uint16 volatile x = 0xabcd;
  function f() public {
    uint8 x;
    x[4] = x[4] << 32 >> 32;
    x[1] = x[1] << 8 >> 8;
  }
}
