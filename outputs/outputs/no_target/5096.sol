pragma solidity ^0.8.0;
contract C42_bug43556265364 {
  uint88 b = 0x21;
  uint160 c = uint160(uint8(uint8(b))) + uint160(uint160(-(uint8(uint8(b)))))); }
