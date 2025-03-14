pragma solidity ^0.8.0;
contract Contract { function isBugger() public pure returns (bool) { contract X; unchecked { if (0x01FF & 0xFFFFFFFF == 0x0000000000000000000000000000000000000000000000000000000000000000000) { return true; } } return false; } }
