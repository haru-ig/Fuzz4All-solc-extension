pragma solidity ^0.8.0;
contract E7G {
  uint128 x = 0xb00;
  function f() public {
    uint16 x;
    x = x << 32 >> 32;
  }
}
