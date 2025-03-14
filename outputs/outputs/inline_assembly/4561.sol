pragma solidity ^0.8.0;
contract emulator4 { function test() public returns(uint) {} }
contract emulator5 { function test() public pure returns (uint) {uint y = 10000000000000; uint x = 100000000000000; for (uint i = 0; i < 100; i ++) { y = y * x; x = x + 1; } uint z = y * x; return z; } }
