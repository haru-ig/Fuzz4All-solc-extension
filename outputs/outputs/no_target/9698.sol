pragma solidity ^0.8.0;
contract Contract { function checkBugger() public pure {} }
contract Contract { function bugger() public pure {} }
contract Contract { function isBugger() public pure returns (bytes memory) { unchecked { if (bugger()) {} return "Hello world!"; } } }
