pragma solidity ^0.8.0;
contract GBase { function f(uint256 s, uint256 f) public pure {} }
contract G is GBase { function f(uint256 s, uint256 f) public pure { GBase.f(s, f); } }
