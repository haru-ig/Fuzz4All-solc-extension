pragma solidity ^0.8.0;
contract TestMutated722 {
    function mul(uint x, uint y) public pure returns (uint) {
        uint z0;
        uint z1;
        uint z2;
        if (z1 < 0) {
            z2 = mul(z0, x);
        } else {
            z2 = mul(z0, y);
        }
        return z2;
    }
}
