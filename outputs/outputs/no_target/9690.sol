pragma solidity ^0.8.0;
contract Contract { function isBugger() public pure returns (bool) { unchecked { if ((1 << (16**16))) + (1 << (3**82)) > uint128(11111000000000000000000000000000000000000000000000000000000001) { return true; } } return false; } }
