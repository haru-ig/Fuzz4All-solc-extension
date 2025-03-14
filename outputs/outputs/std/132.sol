pragma solidity ^0.8.0;
abstract contract MutateProgram {
    function _max_int(uint x, uint u) public pure returns (uint) {
        if (x == uint(u) && u!= 0) { return uint(u); }
        if (x > uint(u)) { return x; }
        return uint(u);
    }
}
