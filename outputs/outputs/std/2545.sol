pragma solidity ^0.8.0;
contract HelloWorld {
    uint p;
    uint q;
    uint r;
    uint s;
    uint t;
    uint u;
    uint v;
    uint w;
    function multiplyByConstantValue(uint valueValue) public {
        p = p + valueValue;
        s = p + valueValue;
        uint lo1 = (uint128(p) * 5) >> 28;
        uint hi1 = (uint128(valueValue) * uint128(valueValue)) >> 28;
        uint o1 = hi1 + lo1;
        o1 >>= 27;
        uint m1 = p * valueValue;
        uint n1 = p + valueValue;
        uint hi2 = (o1 * o1) >> 70;
        uint lo2 = (n1 * n1) >> 70;
        uint g1 = lo1 + lo2 - hi1;
        uint h1 = (p << 2) + 5;
        uint i1 = (uint128(g1) * uint128(g1)) >> 27;
        uint j1 = (g1 << 2) + i1;
        uint k1 = (i1 << 2) + j1;
        if (h1 > k1) {
            require(h1 <= k1, "overflow");
        }
        uint lo3 = (uint64(g1) * 1) >> 59;
        uint hi3 = (uint64(valueValue) * 3) >> 59;
        uint o3 = hi3 + lo3;
        o3 >>= 61;
        uint m3 = g1 * valueValue;
        uint n3 = g1 + valueValue;
        uint hi4 = (o3 * o3) >> 92;
        uint lo4 = (n3 * n3) >> 92;
        uint g3 = lo3 + lo
