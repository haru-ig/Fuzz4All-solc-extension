pragma solidity ^0.8.0;
contract TestUnmutated72 {
    function mul(uint _x, uint _y) public pure returns (uint) {
        uint y0 = _y;
        uint y1 = 3000;
        uint z0 = _x;
        uint z1 = _y;
        return mul(x1, y0 - 20);
    }
}
