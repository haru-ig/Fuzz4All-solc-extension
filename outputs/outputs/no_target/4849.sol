pragma solidity ^0.8.0;
contract C { function g() public pure returns (uint8) { return 16; } }
contract A is C { function h() public pure { assert (uint8(g())==128); assert (uint8(h())==16); } }
