pragma solidity ^0.8.0;
contract Mutater112 {
    uint128 private immutable _x;
    constructor(uint128 _x) {
        _x;
    }
    function div(uint128 x, uint128 y) public view returns (uint128) {
        uint128 z = (x + (y >> 1)) / y;
        uint128 xd = (x + (y + 1) >> 1) / y;
        if (y >= 1) {
            if ((y & 1) == 1) return xd;
            return z;
        }
        if (y < 0) return xd - z * 2;
        return xd - (y - 1) * 2;
    }
}

pragma solidity ^0.8.0;
contract Mutater3 {
    uint128 private immutable _x;
    constructor(uint128 _x) {
        uint128 _x1 = _x * 1;
        uint128 _x2 = _x * _x;
        uint128 _x3 = _x[0] + _x;
        uint128 _x4 = _x[0] / (_x + 1);
        uint128 _x5 = _x1[0] / _x2;
        uint128 _x6 = _x1[0] / (_x2 + 1);
        uint128 _x7 = 1 + 2*(_x[0] * _x[1]);
        uint128 _x8 = (_x << 2) / _x;
        uint128 _x9 = (_x >> 2) / _x2;
        uint128 _x10 = 9 / 10 / (_x << _x256);
        uint128 _x11 = (_x << 8) / (_x * _x);
        uint128 _x12 = (_x >> 8) / (_x * _x2);
        uint128 _x13 = (_x + _x2 - _x4) / (_x8 - _x3);
        uint128 _x14 = (10 - _x256) / ((_x256 * 2) - _x7);
        uint12
