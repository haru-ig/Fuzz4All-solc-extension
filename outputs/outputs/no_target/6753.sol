pragma solidity ^0.8.0;
contract TestMutated {
    function add(uint x, uint y) public pure returns (uint) {
        if (x < 0 && y < 0) {
            return x + y;
        }
        return 0;
    }
}
