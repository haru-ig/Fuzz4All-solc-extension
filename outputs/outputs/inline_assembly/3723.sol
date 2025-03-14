pragma solidity ^0.8.0;
contract SemanticallyEquivalent4 {
  int constant constantValue = -50000;

  function h() view internal returns (uint256) {
    uint256 _h = 4444444444444444444;
    uint256 i = 10;
    uint256 _count = i;
    while (i > 50000) {
      _h = constantValue;
      for (_count = 0; _count < 150; _count++) {
          _h += constantValue;
      }
      i--;
    }
    return uint256(_h);
  }
}
