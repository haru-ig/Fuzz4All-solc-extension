pragma solidity ^0.8.0;
contract AA { function f(uint256 a) public view {assert(a > 0);} }
contract AB { function f(uint256 a) public view {assert(a > 0);} }
contract AC { function f(uint256 a) public view {assert(a > 0);} }
contract BC4 { function f(uint256 a) public view {a += 2;} }
contract CC4 { function f(uint256 a) public view {a += 2;} }
