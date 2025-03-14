pragma solidity ^0.8.0;
contract Vulneratr { uint public constant b = -2**256 + 8; uint8 y = 0; function f() public { y = 0x7fffffff; } }
