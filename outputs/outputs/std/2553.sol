pragma solidity ^0.8.0;
contract HelloWorld {
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
    constructor(uint a_) public {
        a = a_;
        b = (a >> 1);
        c = ((a >> 2)) + 2;
        d = (((a & 1) > 0)? 0x1 : 0x0);
        e = ((c & (c - 1)) + 1);
        f = ((e + f) + 1) >> 1;
        h = ((d & (d - 1)) + 1) >> 1;
        i = ((h & (h - 1)) + 1) >> 1;
        j = (e + (f & (h + 1))) | (f ^ h);
        l = ((e + d) & (f + g)) >> 1;
        multiplyByConstantValue(a);
        uint n = ((a + b) * (i + j + (c & (b - c))) + d + (a + b + h)) + (f ^ h);
        require(n < (a + b + (a + b + h) + l));

    }
    function multiplyByConstantValue(uint valueValue) public {
        a = a + valueValue;
        uint lo = (uint160(a) * uint160(a)) >> 32;
        uint hi = (uint160(valueValue) * uint160(valueValue)) >> 32;
        uint o = hi + lo;
        o >>= 31;
        uint m = a * valueValue;
        uint n = a + valueValue;
        uint hi2 = 2 * ((o * o) >> 8);
        uint lo2 = (n * n) >>
