pragma solidity ^0.8.0;
contract second4 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i = a ** b;
    }
}
contract second5 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    uint f;
    constructor(uint _a, uint _b, uint _c) public {
        if (_a == 0)
            throw;
        uint i = _b * c * d / _c + a;
        b = a + b * e * f / (f * f * i);
        a = i;
    }
}
contract second6 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    uint f;
    uint g;
    constructor(uint _a, uint _b, uint _c, uint _d) public {
        if (_a == 0)
            throw;
        uint i = _b * c * d / _c + _a;
        if (b < d) {
            g = f + b + b + a * i;
            b = f + b;
            a = g;
        }
    }
}
contract second7 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    uint f;
    uint g;
    uint h;
    constructor(uint _a, uint _b, uint _c, uint _d, uint _e, uint _f, uint _g, uint _h) public {
        if (_a == 0)
            throw;
        b = c * _e / 3d + _a + _a1 * _a2;
        if (a < e) {
            h = g + _e * i;
            g = _f * i;
            f = h + g + h;
        }
    }
}
contract second8 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    uint f;
    uint g;
    uint h;
    uint i;
    constructor(uint _a, uint _b, uint _c, uint _d, uint _e, uint _f, uint _g, uint _h, uint _i) public {
        if (_a == 0)
            throw;
        uint i1 = a - _b + b + (_c * _e - b) * e + (_d + _b) + c + (_f * _h + _b) * c + _i;
        b = ((f + g) * h * i) / 64
