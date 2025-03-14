pragma solidity ^0.8.0;
 contract Vulnerable { uint constant a = type(uint).max - 1; function f() public { assert(a >> 80 == 0); } }
