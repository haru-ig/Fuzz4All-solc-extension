pragma solidity ^0.8.0;
abstract contract MutateProgram {
    function _min_uint(uint x, uint u) public pure returns (uint) {
        if (x == u) { return x; }
        if (x < u) { return x; }
        return u;
    }
}
