pragma solidity ^0.8.0;
contract Contract { function isBugger() public pure returns (bytes memory) { unchecked { if (0x000000000000000000000000000000000000000000000000000000000000000 & 0x01FF == 0x0000000000000000000000000000000000000000000000000000000000000000) { return "Hello world!"; } } return "Hello world!"; } }
