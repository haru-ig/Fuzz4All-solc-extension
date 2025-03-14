pragma solidity ^0.8.0;
contract S2 { uint public x; function f() public view { x = (x * 12345) >> 32; } }
