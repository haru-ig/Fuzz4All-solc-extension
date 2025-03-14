pragma solidity ^0.8.0;
contract TestMutated660 {
    function add(uint x, uint y) public pure returns (uint) {
         uint72 z = 172 - x * y / x + x - y*7 /x;
        uint72 w = 72 * 67 + 823 - x /y;
        return z + w + 2;
    }
}
