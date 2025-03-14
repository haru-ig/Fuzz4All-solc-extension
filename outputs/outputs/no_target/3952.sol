pragma solidity ^0.8.0;
 interface I { function x() returns(uint); } contract D { address x; function f(address y) public view returns(address); } struct E { I e; I f; } contract C { bool public b; E public c; bool f; uint x; uint256 h; }
