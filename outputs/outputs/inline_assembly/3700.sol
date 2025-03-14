pragma solidity ^0.8.0;
contract SemanticallyEquivalent2_3 is SemanticallyEquivalent2_2 {
  uint256 constant constantValue = 199;
  function h() view internal returns (uint256 _h2) {
    uint256 _h = constantValue + constantValue;
    uint256 _h2 = _h2 + _h;
    _h = _h2 + _h;
    _h2 = _h + _h;
  }
}
