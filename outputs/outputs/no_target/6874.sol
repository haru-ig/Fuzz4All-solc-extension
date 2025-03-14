pragma solidity ^0.8.0;
contract TestMutated659 {
    function add(uint x, uint y) public pure returns (uint) {
        uint z = 1 - x + y - x-y;
        return z + 1;
    }
}
