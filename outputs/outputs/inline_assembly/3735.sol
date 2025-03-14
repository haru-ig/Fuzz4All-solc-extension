pragma solidity ^0.8.0;
contract SemanticallyEquivalent6Optimized {
  constructor(){

  }
  function m() view public returns (bool) {
    uint256 _h = constantValueNoBreak();
    uint256 i = 0;
    uint256 _count = 0;
    uint256 prevYul = _h;
    uint256 _h1 = prevYul;
    _count = constantValueNoBreak();
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
    return bool(_h);
  }
  uint256 constant constantValueNoBreak = 1500;
}
