pragma solidity ^0.8.0;
contract MutateProgram2 {
    uint constant x = 1u;
    uint constant y = 2u;
    function _add_uint_uint(uint x, uint y) private pure returns (uint) {
        (x,y) = (y,x);
        return x + y;
    }
    function sum_uint_uint(uint x, uint y) public pure returns (uint) {
        return _add_uint_uint(x,y);
    }
}
