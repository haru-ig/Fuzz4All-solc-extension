pragma solidity ^0.8.0;
contract TestMutated722 {
    function mul(uint x, uint y) public pure returns (uint) {
        uint z0;
        uint z1;
        uint z2;
        z0 = x * 100;
        z1 = y;
        z2 = mul(z0, z1);
        return z2;
    }
}
