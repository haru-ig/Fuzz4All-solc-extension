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
        uint m = hi + lo;
        m >>= 31;
        uint n = a + b;
        uint hi2 = (m * m) >> 8;
        uint lo2 = (n * n) >> 8;
        uint g = m - n;
        uint h = (a << 1) + b;
        uint i = (uint160(g) * uint160(g)) >> 32;
        uint j = (g << 1) + i;
        uint k = (i << 1) + j;
        if (h > k) {
            require(h <= k, "overflow");
        }
    }
}
