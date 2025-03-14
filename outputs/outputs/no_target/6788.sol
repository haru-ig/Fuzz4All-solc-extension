pragma solidity ^0.8.0;
contract TestMutated7 {
    function mul(uint256 _x, uint160 _y) public pure returns (uint160) {
        return mul(_x >> 8, _y);
    }
}
contract TestMutated8 {
    function mul(uint160 _x, uint _y) public pure returns (uint160) {
        uint x0 = _x * 10;
        uint x1 = _x;
        uint y0 = 10;
        uint y1 = _y;
        uint z0 = x0;
        uint z1 = x1;
        return mul(x1, y0);
    }
}
