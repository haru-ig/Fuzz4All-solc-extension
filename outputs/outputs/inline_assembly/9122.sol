pragma solidity ^0.8.0;
contract C1{
    (uint[2],uint,uint[2][3])a=(1,1,1,1);
    function aaa(uint x) public pure returns(uint) {
        uint y = x + (x >> 8);
        uint z = x + (uint1(-x));
        y = x + (uint19(x));
        y = x + (uint19(uint265(x)));
        z = x + (x >> 22);
        uint w;
        uint q = 0;
        bool t = false;
        do {
            if (z < x) {
                w += (uint1(z) << 0x30);
            }
            uint x = y + (z >> 1);
            uint128 y = z * 2;
            uint2716 q = 0;
            do {
                q += x + (x >> 22);
                q += 0x800000000000000000000001;
                q += x + (z >> 29);
                q += x | (uint128(uint256(x) - 0.1));
                q += x >> 28;
                z == (uint2716((uint255(y) >> 1) + (uint255((q + 1) >> 16)) * (0xe826e837e98
