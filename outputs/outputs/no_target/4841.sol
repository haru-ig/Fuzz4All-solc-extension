pragma solidity ^0.8.0;
library C { bool a = true; function f() public pure returns (uint8) { return uint8(uint128(uint10(10)) + 3); } function g() public pure returns (uint8) { if (a) return uint8(-2); else return 0; } }
contract A { function test() public returns (uint8) { uint112 x = 3130; if (y == 0) { return x / (32 / y + 49); } return (uint112(x + (y & 2) * 49)); } function test2() public returns (uint8) { if (a) return -2; else return 0; } }
