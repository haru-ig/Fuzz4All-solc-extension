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
    function add(uint a, uint b) public {
        a += b;
        uint hi = (uint160(a) * uint160(a)) >> 32;
        uint lo = (uint160(b) * uint160(b)) >> 32;
        require(hi < (2 ** 256) - 1, "overflow");
        uint m = (hi + lo) >> 1;
        uint n = (a + b) >> 1;
        uint hi2 = (m * m) >> 8;
        uint lo2 = (n * n) >> 8;
        uint g = m - n;
        uint h = a + b + (a + b < a? 1 : 0);
        uint i = a + (b + a) + 1;
        uint j = a + b + (b + c < a? 1 : 0);
        uint k = (a << 1) + 1;
        uint l = (b << 1) + a + 1;
        uint hi3 = (h * h) >> 8;
        uint lo3 = (g * g) >> 8;
        uint j2 = h + l;
        uint k2 = h + a + 1;
        uint x = (uint160(j2) * uint160(j2)) >> 32;
        uint y = (x * x) >> 8;
        uint w = (j2 * j2) >> 8;
        uint z = (j2 * j2 + 1) >> 1;
        uint hi4 = (uint128(hi) * uint128(
