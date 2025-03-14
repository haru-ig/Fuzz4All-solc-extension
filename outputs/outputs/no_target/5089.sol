pragma solidity ^0.8.0;
contract C41_bug422481729925 {
  uint88 b = 0x21;
  function set() public { b = 0xfffffffc; uint88 c; uint160 d; c = uint88(uint(uint8(c))); d = uint160(uint8(uint8(c))) + uint88(0x4); }
}
