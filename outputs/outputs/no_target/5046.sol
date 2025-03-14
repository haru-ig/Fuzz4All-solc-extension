pragma solidity ^0.8.0;
contract C38_bug404933976319 { uint115 a = 0; function get() public view returns (uint115 b) { return a; } function set(uint174 b0) public { a = b0; } }
