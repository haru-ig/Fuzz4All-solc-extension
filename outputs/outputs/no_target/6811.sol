pragma solidity ^0.8.0;
contract TestMutated723 {
    uint constant max256 = type(uint).max;
    function mul(uint x, uint y) public pure returns (uint) {
        uint z0 = x * y;
        uint z1 = x * x;
        uint z2 = x * y * x;
        uint z3 = x / y;
        uint z4 = x / y * y;
        uint z5 = x % y;
        uint z6;
        if ((y & 128)!= 0) {
            if (x!= type(uint).max) {
                z6 = test(x);
            } else {
                z6 = z0;
            }
        } else {
            z6 = 0;
        }
        uint z7 = x >> y;
        if (x > max256) {
            uint z8 = x >> y * 2;
            uint z9 = x >> y % 2;
            uint z10 = x >> y * 2 % 2;
            test(x);
            test(0);
        }
        uint z11 = x << y;
        uint z12 = x << y << 2;
        uint z13 = x << y > 2;
        uint z14 = uint(uint80(x >> y << 2)) >> y;
        uint z15 = 1 / x % y;
        uint z16 = x < 4294967296;
        uint z17 = x < 0xabcdef10;
        uint z18 = uint(uint80(x >> 8)) >> 10;
        uint z19 = uint(-1 * x + 1);
        uint z20 = uint80(x) >> 16;
        uint z21 = uint80(x) >> 24;
        uint z22 = uint80(x) >> 48;
        uint z23 = uint80(x >> y);
        uint z24 = x + x;
        uint z25 = x - 1;
        uint z26 = x + 1;
        uint z27 = x - 1.0;
        uint z28 = x + 1.0;
        uint z29 = x + x + 100;
        uint z30 = x << x;
        uint z31 = x << ~x;
    }
}
