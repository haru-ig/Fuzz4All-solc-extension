pragma solidity ^0.8.0;
contract SemanticallyEquivalent3 {
  function h() view internal returns (int) {
    uint256 _h = constantValue;
    uint256 i = 0;
    if (i == 1) {
        _h += constantValue;
    }
    return int(_h);
  }
  uint256 constant constantValue = 125;
}
