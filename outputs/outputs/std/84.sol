pragma solidity ^0.8.0;
contract MutateProgram {
    function _add_uint_uint(uint[] memory xs, uint[] memory ys) private pure returns (uint[] memory) {
        uint[] memory result;
        require(xs.length == ys.length, "Arrays not the same length");
        for (uint i = 0; i < xs.length; i++) {
            result[i] = _add_uint_uint(xs[i], ys[i]);
        }
        return result;
    }
    function sum_uint_uint(uint x, uint[] memory xs) public pure returns (uint) {
        return _add_uint_uint(x, xs);
    }
}
