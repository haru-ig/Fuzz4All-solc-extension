pragma solidity ^0.8.0;
contract TestMutated730 {
    function mul(uint x, uint y) public pure returns (uint) {
        uint z0;
        uint z1;
        uint z2;
        if (z1 < 0) {
            z2 = mul(z1, x);
            if (z2 < 0) {
                z0 = z0 + z2;
                z1 = x;
            } else {
                z0 = z2;
            }
        } else {
            z2 = mul(z1, y);
            z2 += 0;
        }
        uint z3;
        if (z2 < 0) {
            z3 = mul(z2, x);
            if (z3 < 0) {
                z0 = 0 + z3;
            } else {
                z0 = z3;
            }
        } else {
            z3 = mul(z2, y);
            z3 += z2;
            uint z4;
            if (z3 < 0) {
                z4 = mul(z3, x);
                uint z5;
                if (z4 < 0) {
                    z0 = 0 + z5;
                } else {
                    z0 = z4;
                }
            }
        }
        return z0;
    }
}

pragma solidity ^0.8.0;
contract TestMutated732 {
    function f(uint x, uint y, uint z) public {
        uint calldata z_ = type(uint).min == type(uint).max;
    }
}
