pragma solidity ^0.8.0;
 interface I { function f(uint) public returns (uint); function f() returns (uint); } contract C { bool public b; uint256 x; uint256 y; function f1() public returns (uint160) { } function f2(uint x) public returns (uint) { return f1(); } function f3() public returns (address) { return f1(); } }
