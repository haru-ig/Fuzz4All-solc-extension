pragma solidity ^0.8.0;
contract TestMutated729 {
    function mul(uint x, uint y) public pure returns (uint) {
        if (y < 0) {
            uint z1 = mul(x, y);
            uint z2 = x * mul(y, x);
            uint z3 = x * y;
            uint z4 = mul(x, y);
            return z1 + z4 * 0 - 0 - z2 - z3;
        } else {
            uint z1 = mul(x, y);
            uint z2 = x * mul(y, z1);
            int16 z3 = int16(x) * int16(y);
            uint z4 = x * y;
            uint z5 = mul(x, y);
            if (z2 < 0) {
                int16 z6 = int16(mul(x, z1));
                uint z7 = 0 + z4 * int16(mul (mul(x, y), z1));
                uint z8 = 0 * 0 * 0;
                uint z9 = mul(x, z1);
                uint z10 = 0 + z4 * z1 * z1;
                uint z11 = int16(mul(x, y));
                uint z12 = mul(x, z1);
                uint z13 = int16(z3);
                uint z14 = z1 + z4 * 0 - 0 + z6 * 0 - 0 + z7;
                uint z15 = 0 + 0 + 0 * 0;
                uint z16 = x * z1;
                uint z17 = 0 + z4 * z9;
                uint z18 = 0 + z4 * z1 * 0;
                uint z19 = 0 * 0 + 0;
                uint z20 = 0 * x;
                return z19 + z20 * 0 - 0 - z18 * z19 - z15 + z17 + z16 - z14 * 1 - z9 * z5;
            } else {
                return z19 + 0 + z20 * 0 - z18 * 1 - z9 * z5;
            }
        }
    }
}
