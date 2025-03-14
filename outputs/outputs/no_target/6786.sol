pragma solidity ^0.8.0;
contract TestMutated72 {
    function mul(uint _x, uint _y) public pure returns (uint) {
        uint x1 = 500;
        uint y0 = _y * 100;
        uint y1 = 3000;
        uint z0 = x1;
        uint z1 = _y;
        return mul(x1, y0 - 20);
    }
}
