pragma solidity ^0.8.0;
contract CC { function f(uint256 a) public view {assert(a!= 5);} }
contract AB { function f(uint256 a, uint256 b) public view returns(uint256){ return a + b; } }
contract BC { function f(uint256 a, uint256 b) public view returns(uint256){ return a + b; } }
contract CC { function f(uint256 a, uint256 b) public view { assert(a+b > 5);} }
