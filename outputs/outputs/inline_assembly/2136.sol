pragma solidity ^0.8.0;
contract Same3
{
    function doIt(uint x) public pure returns (uint y) {
        assert(x < 99);
        uint w;
        uint z;
        uint w2;
        uint z2;
        uint id1;
        uint id2;
        uint w3;
        uint z3;
        uint w4;
        uint z4;
            uint w5;
            uint z5;
            uint w6;
            uint z6;
        uint id3;
        uint id4;
        uint id5;
        w = x;
        w2 = w;
        id1 = (w | 19) & 3;
        id2 = (x | 20) & 3;
        w3 = w >> 2;
        if(id3 == 0){
            z = z * z;
            w4 = (x ^ w);
            w5 = w ^ w4;
            w6 = w2 ^ w2;
            id3 = 1;
            id4 = (x << 3 ^ w) >> 4;
            id5 = (x ^ x >> 1) >> 4;
            z3 = w3 ^ z;
            w4 = (x ^ w7) >> 1;
            w5 = (x ^ w4) >> 4;
            w6 = (w2 ^ w) >> 4;
            w7 = 263;
            id3 = 5;
        }
        else{
            z2 = w4 << 1;
            z3 = w3 >> 4;
            w4 = (x ^ w) >> 1;
            w5 = w2;
            w6 = (w ^ w2 ^ 19);
            w7 = 263;
            id3 = 7;
            id4 = (x << 3) >> 1;
            id5 = x >> 4;
        }
        assert(id1 == 2);
        assert(id2 == 2);
        y = id3;
        z = z2;
    z2 = w5;
    w5 = w4;
    z3
