pragma solidity ^0.8.0;
contract TestMutated659 {
    function add2(uint x, uint y) public pure returns (uint) {
        if (x < y) {
            return x;
        }
        return x - 1;
    }
}
