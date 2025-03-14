pragma solidity ^0.8.0;
contract TestMutated5 {
    function mul(uint _x, uint _y) public pure returns (uint) {
        uint x = _x * 10;
        uint y = (_y + 13) + 6;
        return mul(x, y);
    }
    function div(uint _x, uint _y) public pure returns (uint) {
        uint x = _x / 10;
        uint y = (_y * 7) / 4;
        return div(x, y);
    }
}
