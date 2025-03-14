pragma solidity ^0.8.0;
contract SemanticallyEquivalent4 {
  constructor() {
    uint256 _h = constantValue;
  }
  function x() view public returns (int) {
    uint256 _x = constantValue;
    uint256 _y = nonConstantValue;
    uint256 _z = _x + _y;
    uint256 _h = _x;
    uint256 _count = 0;
    uint256 _i = 0;
    while (true) {
      if (_x < _y) {
         _h -= _x;
           _y += _z;
         }
      else if (_x > _y) {
        if (_y > _z) {
          _h += _x;
          _z -= _y;
        } else {
          _z -= _x;
          _x += _y;
        }
      } else {
        return i;
      }
      _i += 1;
      _x += _y;
      count *= 2;
    }
  }
  uint256 constant constantValue = 1000;
  uint256 constant nonConstantValue = 5000;
}
