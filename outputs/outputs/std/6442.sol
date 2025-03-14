pragma solidity ^0.8.0;
contract Array {
    function sum(uint256[] memory arr) public returns (uint256) {
        uint256 arrLength = arr.length;
        uint256 result = 0;
        for (uint256 i = 0; i < arrLength; i++) {
            if (!isInArray(arr, result)) {
                result += arr[i];
            }
        }
        return result;
    }
    function isInArray(uint256[] memory arr, uint256 value) public view returns (bool) {
        for (uint256 i = 0; i < arr.length; i++)
            if (arr[i] == value) {
                return true;
            }
        return false;
    }
    function print(uint256[] memory arr) public pure {
        for (uint256 i = 0; i < arr.length; i++) {
            print(i + 1, arr[i]);
        }
    }
    function print(uint256 number, uint256 element) public pure {
    }
