pragma solidity ^0.8.0;
contract SemanticallyEquivalent6_Optimized {
  contract Optimized {
    uint256 constant constantValue = 1500;
  }
  function h() view public returns (int) {
    uint256 _h = constantValue;
    uint256 i = 0;
    uint256 _count = 0;
    uint256 prevYul = _h;
    uint256 _h1 = prevYul;
    _count = constantValue;
    if (i == 1) {
      prevYul = prevYul + _h1;
      prevYul = prevYul * 2;
      for (_count = 0; _count < 100; _count++) {
          _h += 1;
          prevYul *= 2;
      }
      _h *= 2;
      _h += 1000;
    }
    return int(_h);
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent6 {
  uint256 constant constantValue = 1500;
  function h() view public returns (int) {
    uint256 _h = constantValue;
    uint256 i = 0;
    uint256 _count = 0;
    uint256 prevYul = _h;
    uint256 _h1 = prevYul;
    _count = constantValue;
    if (i == 1) {
      prevYul = prevYul + _h1;
      prevYul = prevYul * 2;
      for (_count = 0; _count < 100; _count++) {
          _h += 1;
          prevYul *= 2;
      }
      _h *= 2;
      _h += 1000;
