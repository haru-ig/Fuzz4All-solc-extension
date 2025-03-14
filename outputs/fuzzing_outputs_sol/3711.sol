pragma solidity ^0.8.0;
contract Example7 {
    function add(uint x, uint y) public pure returns (uint) {
        uint sum = 0;
        if (x >= y) {
            sum = x + y;
        }
        return sum;
    }
}
