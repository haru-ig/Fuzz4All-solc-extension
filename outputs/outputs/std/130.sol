pragma solidity ^0.8.0;
abstract contract MutateProgram {
    function _max_int(uint x, uint u) public pure returns (uint) {
        if (x == u) { return x; }
        if (x < u) { return x; }
        return u;
    }
 }
