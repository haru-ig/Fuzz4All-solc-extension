pragma solidity ^0.8.0;
contract MutateProgram {
    constructor(int x, uint y) public {
    }
    function _sum_uint_uint(uint x, uint y) private pure returns (uint) {
        return x + y;
    }
}
