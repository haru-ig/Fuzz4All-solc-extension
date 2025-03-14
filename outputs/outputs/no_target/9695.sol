pragma solidity ^0.8.0;
contract Contract { function isBugger() public pure returns (bytes memory) { unchecked { if (2147483645 & 0xFFFFFFFF == 0) { return "Hello world!"; } } return "Hello world!"; } }
