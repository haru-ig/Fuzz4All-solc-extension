pragma solidity ^0.8.0;
 contract Vulneratr { uint y = 0x7fffffff; function f() public { y = y * 4294967296; } }
