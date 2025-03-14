pragma solidity ^0.8.0;
contract E6G {
  uint16 x = 0xb000;
  function f() public {
    uint16 old = x;
    x = (old << 32) | 0xffffffff;
  }
  function modify() public {
    x = x << 32;
  }
}
