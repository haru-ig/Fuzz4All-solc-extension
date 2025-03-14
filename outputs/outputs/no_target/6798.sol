pragma solidity ^0.8.0;
contract TestMutated72 {
    function mul(uint x, uint y) public pure returns (uint) {
        uint z0;
        uint z1;
        z0 = x * 100;
        z1 = y;
        return mul(z0, z1);
    }
}
