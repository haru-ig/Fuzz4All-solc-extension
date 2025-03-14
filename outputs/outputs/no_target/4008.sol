pragma solidity ^0.8.0;
 contract Vulneratr { function f() public { uint[] memory a; a[0] = 0xffc0ffee; } }
