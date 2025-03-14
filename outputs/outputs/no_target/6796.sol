pragma solidity ^0.8.0;
contract TestUpgraded72 {
    function mul(uint _x, uint _y) public pure returns (uint) {
        using TestMutated72 for TestMutated72;
        uint x1 = 500;
        uint y0 = _y * 100;
        uint z0 = x1;
        uint y1 = y0 > y1;
        uint z1 = _x - 500;
    }
}
contract Test2 {
    function mul(uint _x, uint _y, uint _z) public pure returns (uint) {
        uint x1 = 500;
        uint x0 = x1;
        uint y1 = y0 > y1;
        uint z1 = _x - 500;
        z1 *= 200;
    }
}
