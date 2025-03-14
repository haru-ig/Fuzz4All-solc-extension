pragma solidity ^0.8.0;
contract TestMutated740 {
    function sub(uint x) public pure returns (uint) {
        uint z0 = 1;
        uint z;
        int z1 = add(z0);
        if (z1 < 0) {
            z = z1;
        } else {
            z = add(z, x);
            z = 0 - z;
        }
        z = 0 + z;
        return z;
    }
}
