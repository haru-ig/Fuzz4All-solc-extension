pragma solidity ^0.8.0;
contract Vulneratr2 { function f() public { uint[9] memory a; a[0] = 0xffc0ffee; } }
