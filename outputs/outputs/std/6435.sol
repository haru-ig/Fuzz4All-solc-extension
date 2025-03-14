pragma solidity ^0.8.0;
contract Array {
     function contains(uint256[] memory arr, uint256 value) public returns (bool) {
        return indexOf(arr, value) < arr.length;
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
    function merge(uint256[] memory arr1, uint256
