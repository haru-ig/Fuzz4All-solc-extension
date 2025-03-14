pragma solidity ^0.8.0;
contract A { uint public x; constructor () { x = 0x7fffffff; } function f() public pure { require (0x8000000000000000637 > 0xffffffff - x); } }
