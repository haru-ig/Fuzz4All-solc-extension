pragma solidity ^0.8.0;
contract TestMutated7 {
    function mul(uint _x, uint256 _y) public pure returns (uint) {
        uint x0 = _x * 2;
        uint x1 = 500;
        uint y0 = 2 * 500 - _y;
        uint y1 = 10;
        uint z0 = x0;
        uint z1 = _y;
        return mul(x1, y1 + 100);
    }
}
