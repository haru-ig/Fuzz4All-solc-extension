pragma solidity ^0.8.0;
contract Vulneratr { function f() public { uint[32] memory a; a[0] = 0xffc0ffee; a[23] = a[0]; } }
