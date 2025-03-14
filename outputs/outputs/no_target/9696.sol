pragma solidity ^0.8.0;
contract Contract2 { function isBugger() public pure returns (bytes memory) { unchecked { if (0x01FF & 0xFFFFFFFF == 0x000000000000000000000000000000000000000000000000000000000000) { return "Hello world!"; } unchecked { bytes memory temp = new bytes(1000); uint256 a; } } return "Hello world!"; } }
