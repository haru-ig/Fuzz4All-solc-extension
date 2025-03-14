pragma solidity ^0.8.0;
contract C41_bug592850600965 {
  uint88 b = 0x40000000;
  function set() public { uint64 c; uint128 d; uint160 e; c = uint64(uint(uint64(c))); e = uint160(uint64(uint(uint64(d)))) + uint64(uint8(uint160(uint(uint64(a)))))); uint88 f = 0b01; uint88 g = 0b01; uint88 h = 0b00;
}
