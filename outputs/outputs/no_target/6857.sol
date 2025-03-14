pragma solidity ^0.8.0;
contract TestMutated707 {
    function mod(uint x, uint y) public pure returns (uint) {
        uint z0 = 3;
        uint z00 = 6;
        uint z;
        uint z1;
        uint z2;
        uint z20 = 7;
        if (z2 <= 0) {
            z2 = mod(z2, y);
        }
        uint z11 = 0;
        uint z3;
        uint z4;
        if (z0!= 0) {
            z11 = z00 - 1;
        }
        z4 = mod(z2, y);
        z3 = 0 + (uint(6) + 1 - 1);
        z3 = 1 + z3;
        z2 = z1 + ((z20 >> 1) + 100 - 1);
        if (z2!= 0) {
            z = z1;
        } else {
            z = z3 + z4;
        }
        if (z < z0) {
            z = 0;
        }
        return z;
    }
}
