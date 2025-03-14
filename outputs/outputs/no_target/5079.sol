pragma solidity ^0.8.0;
contract C72_bug792656545125 {
  int14 a = 0x19;
  function set() public { a = int14(uint16(uint8(a))); int14 b; int160 c; b = int14(uint16(uint8(uint16(a))))); c = int14(uint8(uint8(uint16(a))))); }
}
