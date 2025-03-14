pragma solidity ^0.8.0;
 interface I {} contract D {} struct E { I e; I f; } contract C { bool public b; E public c; bool f; uint x; uint256 h; }
interface I { function f(uint x); function g(uint[2] memory x); function h(uint[3][4] memory x); function i(uint[4,5] memory __z1) public view returns (uint,uint256); }
interface I2 { function f(uint[512] memory); }


contract M { function g(I2 memory a) public returns (uint256,uint256); }
