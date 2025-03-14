pragma solidity ^0.8.0;
contract AA { function f(uint256 a) public view {a += 2;} }
contract AB { function f(uint256 a) public view {a += 2;} }
contract AC { function f(uint256 a) public {address a;} private function f(uint256 a) public view {a += 2;} }
contract BC4 { function f() public view {a += 2;} }
contract CC4 { function f(uint256 a) public {a += 2;} }
