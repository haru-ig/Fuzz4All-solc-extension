pragma solidity ^0.8.0;
contract SemanticallyEquivalent1_3 {
  function h(uint256 _x) returns (uint256 _h) {
    uint256 h1 = constantValue;
    uint256 h2 = constantValue + _x;
    _h = h2 - h1;
  }
  uint256 constant constantValue = 125;
}
