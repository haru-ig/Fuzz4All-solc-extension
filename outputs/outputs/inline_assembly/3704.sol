pragma solidity ^0.8.0;
contract SemanticallyEquivalent2_3 {
  function h() view internal returns (uint256 _h) {
    uint256 h1 = constantValue;
    uint256 h2 = constantValue + constantValue;
    _h = h1 + h2;
  }
  uint256 constant constantValue = 125;
}
