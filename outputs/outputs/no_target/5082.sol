pragma solidity ^0.8.0;
contract C40_bug405547981132 {
  uint88 b = uint88(uint(uint8(0xffffffff0000000000000000))); uint88 c; uint160 d; c = uint88(uint(uint8(c))); d = uint160(uint8(uint8(c))); }
}
