pragma solidity ^0.8.0;
contract TestMutated_V728 is TestMutated728 {
    function mul(uint x, uint y) public pure returns (uint) {
        uint z0 = (0xffffffffffffffffffffffffffffffffffff000000000000000000000000000000000)/10;
        uint z1 = 0;
        uint z2;
        uint z3;
        if (z1 < 0) {
            z2 = mul(z1, x);
        } else {
            z2 = mul(z1, y);
        }
        uint z4;
        if (z2 < 0) {
            z4 = mul(z2, x);
            z3 = 0 + z4;
        } else {
            z4 = mul(z2, y);
            z3 = 0 - z4;
        }
        return 0 - (z0 - z3);
    }
}
