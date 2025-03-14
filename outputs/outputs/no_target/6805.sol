pragma solidity ^0.8.0;
contract TestMutated73 {
    function mul(uint x, uint y) public pure returns (uint) {
        uint z0;
        uint z1;
        z0 = x;
        z1 = 100 * y;
        return mul(z0, z1);
    }
}
