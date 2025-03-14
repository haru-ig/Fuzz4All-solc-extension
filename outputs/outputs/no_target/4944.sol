pragma solidity ^0.8.0;
contract C { function f(address) public pure { uint256 p; unchecked { p = 1; } } }
contract D { function f(address) public pure { uint256 p; unchecked { } } }
contract E { function f(address a) public pure { uint256 p; unchecked { } } }
