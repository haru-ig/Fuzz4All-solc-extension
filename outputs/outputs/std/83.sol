pragma solidity ^0.8.0;
contract MutateSemantic {
    function add_int_uint(int x, uint y) private pure returns (int) {
        return x + y;
    }
    function sum_uint_uint(uint x, uint y) public pure returns (uint) {
        return add_int_uint(x,y);
    }
}
