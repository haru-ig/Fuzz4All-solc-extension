pragma solidity ^0.8.0;
contract E6G {
  uint16 x = 0xc000;
  function f() public {
    x = x << 32 >> 32;
  }
}
