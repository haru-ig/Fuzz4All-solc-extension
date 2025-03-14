pragma solidity ^0.8.0;
contract Mutate {
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
    uint b2;
    function setConstantValue(uint value) public {
        a = 2 + a;
        b = 2 + b;
        c = 2 + c;
        d = 2 + d;
        e = 2 + e;
        f = 2 + f;
        g = 2 + g;
        h = 2 + h;
        i = 2 + i;
        j = 2 + j;
        k = 2 + k;
        l = 2 + l;
        d = d - b;
        f = c - d - e;
        i = e - f - g;
        b = a - h;
        c = b - i - j;
        f = g - k;
        g = h - f - i;
        i = j - l;
        c = k - i + b;
    }
    function incIntByConstantValue() public {
        a = a + 2;
    }
    function incUintByConstantValue() public {
        uint lo = (uint160(a) * uint160(a)) >> 32;
        uint hi = (uint160(2) * uint160(2)) >> 32;
        uint o = hi + lo;
        uint m = a + 2;
        uint n = a + 2;
        uint hi2 = (o * o) >> 8;
        uint lo2 = (n * n) >> 8;
        uint g = lo + lo2 - hi;
        uint h = (a << 1) + 2;
        uint j = (uint160(g) * uint160(g)) >> 32;
        uint k = (g
