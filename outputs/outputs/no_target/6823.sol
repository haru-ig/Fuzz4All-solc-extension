pragma solidity ^0.8.0;
contract TestMutated722 {
    function mul(uint x, uint y) public pure returns (uint) {
        uint z0 = 0;
        uint z1;
        uint z2;
        if (0 < z1) {
            z2 = mul(z1, x);
        } else {
            z2 = mul(z1, y);
        }
        return z2;
    }
}
