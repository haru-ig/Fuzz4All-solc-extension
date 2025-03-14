pragma solidity ^0.8.0;
contract TestMutated660 {
    function add(uint x, uint y) public pure returns (uint) {
        uint z = 1 - x / 2 + y / 2 - x / 2-y / 2;
        return z + 1;
    }
}
