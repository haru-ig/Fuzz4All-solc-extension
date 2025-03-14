pragma solidity ^0.8.0;
contract c {
  uint8 s1;
  uint8 s2;
  function f() public { s1 = bytes2uint(uint2bytes(s1 << 255 | s1)); s2 = bytes2uint(uint2bytes(s2 << 255 | s2)); }
}
