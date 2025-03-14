pragma solidity ^0.8.0;
contract Bug3 { function isBugger() public { unchecked { if (false & 0xFFFFFFFF == 0x00000000000000000000000000000000000000000000000000000000000000000) { revert(); } } } }
contract Bug4 { function isBugger() public { unchecked { if (0x0000 & 0xFFFFFFFF == 0xE000000000000000000000000000000000000000000000000000000000000000000) { revert(); } } } }
