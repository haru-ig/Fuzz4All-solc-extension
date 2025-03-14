pragma solidity ^0.8.0;
contract SemanticallyEquivalent{
  uint256 constant constantValue = 1;
  function g() view internal returns (uint256 _g) {
    _g = constantValue + constantValue;
  }
  function s() view internal returns (uint256 _s) {
    _s = constantValue + constantValue;
  }
}
