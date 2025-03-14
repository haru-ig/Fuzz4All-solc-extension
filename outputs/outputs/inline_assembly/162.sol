pragma solidity ^0.8.0;
contract E6G {
  uint16 x = 0xb00;
  function f() public {
    uint8 x;
    x = x << 32 >> 32;
  }
}
