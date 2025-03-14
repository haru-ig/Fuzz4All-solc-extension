pragma solidity ^0.8.0;

contract C42_bug435562650672 {
  uint88 b = 0x21;
  uint88 i = b;
  uint160 j = uint160((i + 0x4) / 0x8);
}
