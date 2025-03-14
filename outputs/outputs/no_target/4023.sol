pragma solidity ^0.8.0;
 contract Vulneratr { uint u = 0; function f() public { u = -0x23a3af; } }
