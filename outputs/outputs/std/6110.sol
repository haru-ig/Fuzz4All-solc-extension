pragma solidity ^0.8.0;
library Array {
    function find(uint256[] uintArray, uint256 value) internal pure returns (uint256 index) {
        require(value < uintArray.length, "Index out of bounds");
        for (uint256 i = 0; i < uintArray.length; i++) {
            if (value == uintArray[i]) {
                return i;
            }
        }
        revert("Value not found");
    }
    function set(uint256[] memory array, uint256 index, uint256 value) internal {
        require(uintArray.length > index, "Index out of bounds");
        uint256[] memory newArray = new uint256[](uintArray.length - 1);
        for (uint256 i = 0; i < index; i++) {
            newArray[i] = array[i];
        }
        newArray[uintArray.length - 1] = value;
        for (uint256 i = index + 1; i < uintArray.length; i++) {
            newArray[i - 1] = array[i];
        }
        array = newArray;
    }
    function get(uint256[] memory array, uint256 index) internal pure returns (uint256) {
        require(uintArray.length > index, "Index out of bounds");
        return array[index];
    }
    function count(uint256[] memory array) internal pure returns (uint256) {
        return array.length;
    }
    function min(uint256 x, uint256 y) internal pure returns (uint256 yResult) {
        return x <= y? x : y;
    }
    function max(uint256 x, uint256 y) internal pure returns (uint256 yResult) {
        return x >= y? x : y;
    }
    function swap(uint256[] memory array, uint256 index1, uint256 index2) internal {
        uint256 temp = array[index1];
        array[index1] = array[index2];
        array[index2] = temp;
    }
    function sort(uint256[] memory array, uint256 length) internal {
        uint256 swapCount = 1;
        for (uint256 i = length - 1; i > 0; i--) {
            uint256 minIndex = i;
            uint256 min = array[minIndex];
            for (uint256 j = i; j > 0; j--) {
                if (array[j] < min) {
                    minIndex = j;
                    min = array[minIndex];
                }
            }
            if (minIndex!= i) {
                swapCount++;
                swap(array, minIndex, i);
            }
        }
        if (swapCount
