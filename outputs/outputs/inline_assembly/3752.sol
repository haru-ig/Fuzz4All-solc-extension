pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
  constructor() {
    uint256 _h = constantValue;
  }
  function x() view public returns (int) {
    uint256 _h = constantValue;
    uint256 i = 0;
    uint256 _count = 0;
    uint256 _h1 = _h;
    uint256 _h2 = _h;
    uint256 _h3 = _h1 + _h2;
    uint256 i2 = 0;
    uint256 _num = _h;
    while (i2!= 255) {
      _h2 += _h3;
      _count = ((_count + _h == _h) > 32**32-64-1-1? _h : 0);
      _h2 -= _h3;
      _h3 += _h1;
      _num -= _h;
      i2 += 1;
    }
    return int(_h);
  }
  address constant constantValue = 1;
}
