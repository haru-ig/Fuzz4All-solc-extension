pragma solidity ^0.8.0;
contract C5 {
   function mut(int _x) public pure returns (uint8) {
      uint8 _x1 = 1;
         if (_x < 0) {
        _x = 0;
        _x1 = _x1 + 2;
       } else
        _x1 = _x1 + 2;
    return _x1;
   }
   function modint(int _x) public pure returns (int) {
      uint8 _x0 = 1;
         if (_x < 0) {
        _x = 0;
        _x0 = _x0 + 2;
       } else
        _x0 = _x0 + 2;
    return (_x0 << _x) + _x;
   }
}
