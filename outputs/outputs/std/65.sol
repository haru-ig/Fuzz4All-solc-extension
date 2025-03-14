pragma solidity ^0.8.0;

contract MutateMethod {
    constructor(uint x, uint y) public {
    }
    function _sum_uint_uint(uint x, uint y) internal view returns (uint) {
        return x + y;
    }
    function _sub_uint_uint(uint x, uint y) internal view returns (uint) {
        return x - y;
    }
}
