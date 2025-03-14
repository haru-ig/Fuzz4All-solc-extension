pragma solidity ^0.8.0;
contract C41_bug422481729925 {
  uint88 b = 0x19;
  function set() public { b = uint88(uint(uint8(b))); b += c; }
}
