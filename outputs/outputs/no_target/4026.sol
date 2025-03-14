pragma solidity ^0.8.0;
 contract Vulneratr { uint y = 0; function f() public { y = y < 0xff; } }
