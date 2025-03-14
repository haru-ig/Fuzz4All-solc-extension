pragma solidity ^0.8.0;
contract TestMutated658 {
    function add(uint x, uint y) public pure returns (uint) {
        if (x < y) {
            return x - 1;
        }
        return x + y;
    }
}
