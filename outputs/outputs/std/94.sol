pragma solidity ^0.8.0;
abstract contract MutateProgram {
    function _mul_uint(uint x, uint u) public pure returns (uint) {
        if (x == uint(0)) { return 0; }
        return x * u;
    }
}
