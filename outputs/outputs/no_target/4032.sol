pragma solidity ^0.8.0;
contract Vulneratr1 { uint private y = 0x7fffffff; function f() public { y = y * 4294967296; } }
