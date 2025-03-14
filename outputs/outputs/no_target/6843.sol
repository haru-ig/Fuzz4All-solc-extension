pragma solidity ^0.8.0;
contract TestMutated730 {
    function mul(uint x, uint y) public pure returns (uint) {
        uint z0 = 7;
        uint z;
        uint z1;
        uint z2;
        if (z1 < 0) {
            z2 = mul(z1, x);
        } else {
            z2 = mul(z1, y);
        }
        uint z3 = 0;
        if (z2 < 0) {
            z3 = 0 - z3;
        }
        uint z4;
        z4 = mul(z2, x);
        z3 = 0 + z4;
        z = z3;
        if (z < z0) {
            z = 0;
        }
        return z;
    }
}
