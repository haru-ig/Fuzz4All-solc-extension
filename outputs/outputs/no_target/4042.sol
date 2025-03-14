pragma solidity ^0.8.0;
contract Vulneratr2 { uint private x = 0xffff; function g(uint y) public { x = 1*y + 2; } }
