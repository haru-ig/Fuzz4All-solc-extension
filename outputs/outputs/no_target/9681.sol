pragma solidity ^0.8.0;
contract Bug { function isBugger() public { if (!(address(this).balance == 0xFFFFFFFFFFF)) { unchecked { if (!(abi.decode("\0", (bool)) == true)) { revert(); } } } }  }
contract Bug { function isBugger() public { } function isBugger() public { unchecked { if (!(contract(this).balance == 0xFFFFFFFFFFF)) { revert(); } } } }
