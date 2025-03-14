pragma solidity ^0.8.0;
contract TestMutated729 {
    function div(uint x, uint y) public pure returns (uint) {
        uint z0 = 0;
        uint z1;
        uint z2;
        if (z1 < 0) {
            z2 = div(z1, x);
        } else {
            z2 = div(z1, y);
        }
        uint z3 = 0;
        uint z4;
        if (z2 < 0) {
            z4 = div(z2, x);
            z3 = z3 + z4;
        } else {
            z4 = div(z2, y);
            z3 = 0 + z4;
        }
        return z3;
    }
}

pragma solidity ^0.8.0;
contract TestMutated730 {
    function div(uint x, uint y) public pure returns (uint) {
        uint z0 = 0;
        uint z1;
        uint z2;
        if (z1 < 0) {
            z2 = div(z1, x);
        } else if (-z1 > z2) {
            z2 = -z1;
        } else if (z1 > z2) {
            z2 += 1;
        } else {
            z2 >>= 0;
            if (-z2 > z3) {
                z3 -= z2;
                return z3;
                z0 = z0 + z2;
                z2 >>= 1;
            }
            z3 = 5;
            z2 >>= 1;
        }
        uint z3 = 5;
        uint z4;
        if (z2 < 0) {
            z4 = div(z2, x);
            z2 = z3 + z4;
        } else if (-z2 > z3) {
            z2 -= z3;
            z0 -= z2;
            z3 = 0;
        } else {
            z2 -= z0;
        }
        return z2;
    }
}
