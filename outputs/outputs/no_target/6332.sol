pragma solidity ^0.8.0;
contract D {
  uint8 constant G = 0;
  function f() public pure returns (uint8) { return G; }
  uint256 f(uint256 a) public pure returns (uint8) { return G; }
  function g(uint a) public pure returns (uint8) { return G; }
  uint256 g(uint256 a) public pure returns (uint8) { return G; }
}
