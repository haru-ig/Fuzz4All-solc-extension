pragma solidity ^0.8.0;
contract TestMutated78 {
    function mul(uint x, int y) public pure returns (uint) {
        uint z0;
        uint z1;
        z0 = x;
        z1 = y * 100;
        return mul(z0, z1);
    }
}
