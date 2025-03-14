pragma solidity ^0.8.0;
abstract contract MutateProgram {
    function _div_uint(uint x, uint u) public pure returns (uint) {
        if (x == 0 || u == 0) { return 0; }
        return u > 0? uint(_mul_uint(x, u)) / u : 0;
    }
}
