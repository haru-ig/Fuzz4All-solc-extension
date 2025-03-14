pragma solidity ^0.8.0;
contract TestMutated256 {
    function mul(uint x, uint y) public pure returns (uint) {
        uint z0 = 0;
        uint z1;
        uint z2;
        if (z1 < 0) {
            z2 = mul(z1, x);
        } else {
            z2 = mul(z1, y);
        }
        uint z3 = 0;
        uint z4;
        if (z2 < 0) {
            z4 = mul(z2, x);
            z3 = z3 + z4;
        } else {
            z4 = mul(z2, y);
            z3 = 0 + z4;
        }
        uint z5 = 0;
        if ((y & 0xffffffff000000000000000000000000000000000000000000000000000000000000) == 0) {
            z5 = 0;
        }
        uint z6;
        if (z3 < 0) {
            z6 = mul(z3, x);
        } else {
            z6 = mul(z3, y);
        }
        uint z7 = 0;
        if (z7 < 0) {
            z5 = 0;
        }
        uint z8;
        if (z5 >= 0) {
            z8 = z6;
        } else {
            z8 = mul(z6, y);
        }
        uint z9 = 0;
        if ((y & 0xffffffff000000000000000000000000000000000000000000000000000000000000) >= 0) {
            z8 = z9;
        } else {
            z8 = mul(z6, x);
        }
        return add(z8, 0);
    }
}
