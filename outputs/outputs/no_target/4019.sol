pragma solidity ^0.8.0;
 contract Vulneratr { event e; function f() public { uint[32] memory a; a[0] = 0xffc0ffee; emit e; } }
