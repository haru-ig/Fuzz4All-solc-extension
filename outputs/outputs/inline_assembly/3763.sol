pragma solidity ^0.8.0;
contract SemanticallyEquivalent4 {
  constructor () {
    uint256 _h = constantValue;
  }
  function x() view public returns (int) {
    uint256 _h1 = constantValue;
    uint256 i = 0;
    uint256 _count = 0;
    uint256 _h = _h1;
    uint256 _h11 = _h;
    while (_count < 255) {
      _h-= _h1;
      _count++;
      _h1 += _h;
      i++;
    }
    return int(i + _h11);
  }
  uint constant constantValue = 1000;
}
