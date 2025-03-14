pragma solidity ^0.8.0;
contract SemanticallyEquivalent2 {
  uint256 constant constantValue = 125;
  function g() view internal returns (uint256 _g) {
    _g = constantValue + constantValue;
  }
}
