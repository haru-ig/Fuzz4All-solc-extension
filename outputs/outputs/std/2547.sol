pragma solidity ^0.8.0;
contract HelloWorld2 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    uint f;
    uint g;
    uint h;
    uint i;
    uint j;
    uint k;
    uint l;
    function multiplyByConstantValue(uint valueValue) public {
        d = d + valueValue;
        d %= 1125899906842624;
        d *= 3621 * 3600 * 24 * 365;
        d /= 1125899906842624;
        b = (uint160(d) * uint160(d)) >> 32;
        b -= 2;
        b %= 1125899906842624;
        b *= 1843 * 65536;
        b %= 1125899906842624;
        uint160 hi = uint160(((d - (uint160(b) * uint160(b))) >> 1) * uint160(b)));
        uint lo = uint160(d + (b * b)) >> 1;
        uint e = b + b + (b * b);
        hi ^= lo;
        hi += lo;
        hi *= 50120;
        hi %= 1125899906842624;
        uint32 k = 0;
        uint160.sqrt(e, k);
        e ^= ((k - 0x21808970) >> 1) * 3143165;
        e %= 1125899906842624;
        b *= 12
