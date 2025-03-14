pragma solidity ^0.8.0;
library Array {
    function findMin(uint[] memory array) internal pure returns (uint) {
        uint min = array[0];
        for (uint i = 1; i < array.length; ++i) {
            if (array[i] < min) {
                min = array[i];
            }
        }
        return min;
    }
    function findMax(uint[] memory array) internal pure returns (uint) {
        uint max = array[0];
        for (uint i = 1; i < array.length; ++i) {
            if (array[i] > max) {
                max = array[i];
            }
        }
        return max;
    }
    function toReversedArray(uint x) internal pure returns (uint memory reversedArray) {
        reversedArray = new uint[](8);
        for(uint i = 0; i < 8; ++i) {
            reversedArray[i] = x % 2 == 0? (uint)2**i : (uint)2**i + 1;
            x = x/2;
        }
    }

    function set(uint[] memory array, uint index, uint value) public {
        array[index] = value;
    }

    function getValue(uint[] memory array, uint index) public pure returns (uint) {
        return array[index];
    }

    function move(uint[] memory array, uint from, uint to) public {
        array[to] = array[from];
    }

    function sort(uint[] memory array) public pure {
        for (uint i = 0; i < (array.length - 1); ++i) {
            for (uint j = i + 1; j < array.length; ++j) {
                if (array[i] > array[j]) {
                    uint temp = array[i] - array[j];
                    move(array, j, i + 1);
                    move(array, i + 1, j);
                    move(array, j, i + 1);
                    move(array, i
