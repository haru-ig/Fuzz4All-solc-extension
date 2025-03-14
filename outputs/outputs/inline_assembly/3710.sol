pragma solidity ^0.8.0;
contract SemanticallyEquivalent4 {
  function h() view internal returns (int) {
    uint256 _h = constantValue;
    uint256 i = 0;
    if (i == 1) {
        uint256 value = _h;
        uint256 _h2 = _h;
        value += 1;
        return int(_h2);
    }
    return int(_h);
  }
  uint256 constant constantValue = 125;
}
