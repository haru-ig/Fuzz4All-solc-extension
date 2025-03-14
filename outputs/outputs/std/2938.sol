pragma solidity ^0.8.0;

import './MutateArray_v2.sol';
contract MutateArray_v3 is MutateArray_v2 {
    function sum(uint[] memory _array) public pure returns (uint) {
        uint sum = 0;

        for (uint i = 0; i < _array.length-1; ++i) {
            sum += _array[i];
        }

        sum += _array[_array.length - 1];

        return sum;
    }
}
