pragma solidity ^0.8.0;
contract C { function f(address) public pure { uint256 p; uint256 q; unchecked { p = q; } } }
contract D { function f(address) public pure { uint256 p; uint256 q; unchecked { p = q; } } }
contract E { function f(address a) public pure { uint256 p; uint256 q; unchecked { p = q; } } }
