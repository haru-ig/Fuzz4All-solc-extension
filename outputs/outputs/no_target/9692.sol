pragma solidity ^0.8.0;
contract Contract { function isBugger() public pure returns (bool) { unchecked { return 0x80002020202020; } } }
