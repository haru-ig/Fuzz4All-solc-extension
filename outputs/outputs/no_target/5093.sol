pragma solidity ^0.8.0;
contract C42_bug435562650672 {
  uint88 b = 0x21;
  uint160 c;
  function set() public { b = uint88(0xfffffffc); c = uint160(uint8(uint8(c))) + uint160(0x4); }
}
