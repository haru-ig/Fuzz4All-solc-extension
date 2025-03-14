pragma solidity ^0.8.0;
contract TestMutated5 {
    function mul(uint _x, uint256 _y) public pure returns (uint) {
        uint x0 = _x * 20;
        uint x1 = 500;
        uint160 y0 = uint160(_y);
        uint160 y1 = 10;
        return mul(x0, y1);
    }
}
