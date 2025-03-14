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
    function multiplyByConstantValue(uint valueValue) public {
        a = a + valueValue;
        uint lo = (uint160(a) * uint160(a)) >> 32;
        uint hi = (uint160(valueValue) * uint160(valueValue)) >> 32;
        uint o = hi + lo;
        o >>= 31;
        uint m = a * valueValue;
        uint n = a + valueValue;
        uint hi2 = (o * o) >> 8;
        uint lo2 = (n * n) >> 8;
        uint g = lo + lo2 - hi;
        uint h = (a << 1) + valueValue;
        uint i = (uint160(g) * uint160(g)) >> 32;
        uint j = (g << 1) + i;
        uint k = (i << 1) + j;
        if (h > k) {
            require(h <= k, "overflow");
        }
    }
}
