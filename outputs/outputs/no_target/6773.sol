pragma solidity ^0.8.0;
contract TestMutated4 {
    function add(uint _x, uint _y) public pure returns (uint) {
        uint x = _x + 10;
        uint y = (_y - 13) - 6;
        return add(x, y);
    }
}
