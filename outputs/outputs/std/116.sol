pragma solidity ^0.8.0;
abstract contract OptimisticProgram {
    function _min_uint(uint x, uint u) public pure returns (uint) {
        if (x <= u) { return x; }
        return u;
    }
}
