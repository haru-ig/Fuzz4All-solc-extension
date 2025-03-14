pragma solidity ^0.8.0;
contract Array {
    function sum(uint256[] memory arr) public returns (uint256) {
        uint256 arrLength = arr.length;
        uint256 result = 0;
        for (uint256 i = 0; i < arrLength; i++) {
            result += arr[i];
        }
        return result;
    }
    function print(uint256[] memory arr) public pure {
        for (uint256 i = 0; i < arr.length; i++) {
            print(i + 1, arr[i]);
        }
    }
    function print(uint256 number, uint256 element) public pure {
    }
    function contains(uint256[] memory arr, uint256 value) public returns (bool) {
        return (indexOf(arr, value) == arr.length);
    }
    function indexOf(uint256[] memory arr, uint256 value) public returns (uint256) {
        for (uint256 i = 0; i < arr.length; i++)
            if (arr[i] == value) {
                return i;
            }
        return 0;
    }
    function getArrayMember(uint256[] memory arr, uint256 position) public returns (uint256) {
        require(position < arr.length, "No element with such index.");
        return arr[position];
    }
    function setArrayMember(uint256[] memory arr, uint256 position, uint256 value) public {
        require(position < arr.length, "No element with such index.");
        arr[position] = value;
    }
    function merge(uint256[] memory arr1, uint256[] memory arr2) public {
        uint256 arrLength = arr1.length > arr2.length? arr1.length : arr2.length;
        for (uint256 i = 0; i < arrLength; i++) {
            if (arr1[i] > arr2[i]) {
                arr1[i] = arr2[i];
            }
        }
    }
}
