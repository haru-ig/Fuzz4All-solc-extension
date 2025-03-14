pragma solidity ^0.8.0;
contract MutateProgram {
    function _sum_uint_uint(uint x, uint y) private pure returns (uint) {
        return x + y;
    }
    function _square_uint(uint x) private pure returns (uint) {
        return x ** 2;
    }
    function _multiplication_uint_uint(uint x, uint y) private pure returns (uint) {
        return x * y;
    }
    function _division_uint_uint(uint x, uint y) private pure returns (uint) {
        require(y > 0);
        return (x * uint(256**y/(y + 1))) / uint(256**y);
    }
}
