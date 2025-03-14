pragma solidity ^0.8.0;
contract SemanticallyEquivalent2 {
  function h() view internal returns (int) {
    uint256 _h = constantValue;
    uint256 i = 1;
    _h += constantValue;
    return int(_h);
  }
  uint256 constant constantValue = 130;
}
