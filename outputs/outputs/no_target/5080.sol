pragma solidity ^0.8.0;
contract C40_bug405547981132 {
  uint8 b = 0x19;
  function set() public { b = uint8(uint(uint8(b))); uint c; uint d; c = uint8(uint(uint8(c))); d = uint32(uint8(uint(uint8(d)))); }
}
