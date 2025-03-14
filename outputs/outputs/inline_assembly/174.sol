pragma solidity ^0.8.0;
contract E7H {
  uint132 y = 0xabbcd;
  function f() public {
    uint16 x;
    x = x << 16 >> 16;
    x = x << 32 >> 32;
  }
}
