pragma solidity ^0.8.0;
 contract Vulneratr { function f() public { uint a; uint256 b; a = 0xffc0ffee; b = a + 1; } }
