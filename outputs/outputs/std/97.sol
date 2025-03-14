pragma solidity ^0.8.0;
abstract contract MutateProgram {
    function _sub_uint(uint x, uint u) public pure returns (uint) {
        if (x >= u) { return x - u; }
        return 0;
    }
}
