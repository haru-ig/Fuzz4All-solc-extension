pragma solidity ^0.8.0;
contract Bug2 { function isBugger() public { unchecked { if (0x01FF & 0xFFFFFFFF == 0x00000000000000000000000000000000000000000000000000000000000000000) { revert(); } } } }
