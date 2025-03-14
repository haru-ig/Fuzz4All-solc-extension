pragma solidity ^0.8.0;
contract MultipleArguments6 {
    uint private x;
    uint private y;
    uint private z;
    function multipleArguments6(uint _c1, uint _c2, uint _c3) public view {
         uint _x = _c1 * _c2 * _c3;
        x = _x;
        _x = _c1;
        uint x1 = _c2 - _c3;
        uint x2 = _c1 + _c2;
        uint x3 = 17 / 19 - _c2 * x2 + _c1 - 1;
        uint x4 = _c3 + 9075;
        uint x5 = x1 + _c2 * _c1 + (_c2 >= _c3 && x1 < 0x10FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF * 0xFFFFFFFFFFFF);
        if (_x < 0x10000) {
            _x = _x * 0xFFFFFFFF0000FFFFFFFF00;
        }
        uint x6 = _x + 1 - _c3 / _c2;
        uint x7 = _c2 * _x + (_x <= _c2 * x5 + (_c2 < _c3? x5 : _c3)) - _c1 + 109;
        uint x8 = 0xFF00000000000000000000000000000000000000000000000000000000000005;
        uint x9 = 3 / 3 + 0x0 + (_x <= (_c3 >= x3 || _c3 > 256 * 0xFFFFFFFFFFFFFFF * 2 * 0xFFFFFFFFFFFFFFF * 3)? x8 * x2 - _c3 + 0x88 * x6 + x4 * x1 + 0x70 *
