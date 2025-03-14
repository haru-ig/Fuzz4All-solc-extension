pragma solidity ^0.8.0;
contract Bug { function isBugger() public { unchecked { if (!(address(this).balance == 0xFFFFFFFFFFF)) { revert(); } } } }
