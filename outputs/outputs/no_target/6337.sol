pragma solidity ^0.8.0;
contract D {
  function f(uint8 a) public returns (uint256) { return a; }
}

contract D {
  function f(uint8 a) public returns (uint256) { revert(); }
  function g() public returns (uint256) { d; }
  uint8 x;
  function d() public { x = 3; }
}
