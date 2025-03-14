pragma solidity ^0.8.0;
contract Bug { function isBugger() public { unchecked { assembly { t := lt(0xFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF) } if t { revert() } } }
