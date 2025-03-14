pragma solidity ^0.8.0;
contract TestMutated6 {
    function mul(uint _x, uint _y) public pure returns (uint) {
        uint x0 = _x * 20;
        uint x1 = 500;
        uint y0 = _y * 10;
        uint y1 = 10;
        uint z0 = x0;
        uint z1 = _y;
        return mul(x0, y1 + 100);
    }
}
