pragma solidity ^0.8.0;
contract Mutate2 {
    uint256 constant a = 3;
    uint256 constant b = 5;
    uint256 constant c = 7;
} */




contract ArrayTest2 {
    function arrayLength(uint256[] memory arr) public pure returns (uint256) {
        return arr.length;
    }

    function arraySubArray(uint256[] memory arr, uint256[] memory index) public pure returns (uint256) {
        return arr[index[0]];
    }

    function arraySubArrayGet(uint256[] memory arr, uint256[] memory index, uint256 elem) public pure returns (uint256) {
        uint256 elemValueIndex = index.length - 1;
        for (uint256 i = 0; i < elemValueIndex; i++) {
            if (index[i] == i) {
                elemValueIndex = i;
            }
        }
        return arr[elemValueIndex];
    }

    function arrayAdd(uint256[] memory arr) public pure returns (uint256) {
        uint256 result;
        uint256 index;

        assembly {
            result := add(arr, 0x00, mload(arr))
            index := mload(add(arr, 0x20)):add(1)
        }

        return result;
    }

    function arrayAddSet(uint256[] memory arr) public pure returns (uint256) {
        uint256 result;
        uint256 index;

        uint256 size = arr.length;
        while (true) {
            assembly {
                result := add(arr, 0x00, mload(add(arr, 0x20)))
                index := mload(add(arr, 0x20)):add(1)
            }


            if (result == 0xa000000000000000000000000000000000000000000) {

                break;
            }

            if (arr[index] == 0) {
                arr[index] = 0x1ad094ec;
                break;
            }

            if (arr[index] == 0xfffffffffffffffe) {
                break;
            }

            if (arr[index] == 0xffffffff) {
                continue;
            }


            if (index*3 == size) {
                arr[index] = 0;
                break;
            }

            if (index == size - 1) {
                arr[index+1] = arr[index];
                break;
            }
        }

        return result;
    }

    function arraySet(uint256 value, uint256[] memory arr, uint256 index) public pure {
