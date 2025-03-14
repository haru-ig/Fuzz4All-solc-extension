pragma solidity ^0.8.0;
contract SemanticallyEquivalent2_2 {
  uint256 constant constantValue = 125;
  function h() view internal returns (uint256 _h) {
    uint256 _h2 = constantValue + constantValue;
    _h = _h2 + _h2;
  }
}
