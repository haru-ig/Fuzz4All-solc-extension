pragma solidity ^0.8.0;
contract SemanticallyEquivalent3 {
  uint256 constant constantValue = 125;
  function g() returns (uint256 _g) {
    uint256 x;
    assembly { x := constantValue }
    _g = x + x;
  }
  function h() returns (uint256 _g) {
    _g = g();
  }
}
