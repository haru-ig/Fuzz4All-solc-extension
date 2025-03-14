pragma solidity ^0.8.0;
contract C40_bug405547981133 { function set() public { uint a = b; uint160 b; b = uint160(uint88(uint8(uint8(uint(uint(uint(a)))))))); } }
