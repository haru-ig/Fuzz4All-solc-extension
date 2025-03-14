pragma solidity ^0.8.0;
contract C38_bug404933976319 {
  uint88 a = -2 ** 48;
  function get() external view returns (uint88 b) { return a; }
  function set() public { a = 0; }
}
