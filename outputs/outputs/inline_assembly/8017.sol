pragma solidity ^0.8.0;
contract MultipleArguments7 {
    uint x = 1;
    uint y = y ^ 2;
    function multipleArguments7(uint _x, uint y) public view returns (uint z) {
        uint z0 = _x * _x;
        if (_x == 0) {
            y = 1;
        }
        z = z0 * y + _x;
    }
    function multipleArguments7Set(uint _c1, uint _c2) public {
        uint _z = 0;
        bool _c2_isZero = false;
        uint _c1_isZero = 0x1;
        uint _c14 = _c1 + _c2;
        bool _c12 = false;
        uint _x = _c14;
        uint _y = _c14;
        if (_c1 == 0 && _c2 == _c2_isZero) {
            y = 1;
        }
        while (_z == 0) {
            if (_c14 == 0x1) {
                _c12 = true;
            }
            if (_c14 == _x &&!_c12) {
                _z = _y = _y + 1;
            }
            if (_c14 == 0x1) {
                _c12 = true;
            }
            _x = _c14 * _c14;
            if (_c14 == 0) {
                if (_x == 0x1) {
                    y = 1;
                }
            }
            _y = _c14 * _c14 + 1;
            if (_y == 1) {
                _c2_isZero = true;
            }
        }
    }
}
