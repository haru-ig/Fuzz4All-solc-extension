pragma solidity ^0.8.0;
contract Memory {
    function returnArrayAddress(uint256[] memory arr) public view returns(address) {
        return address(arr);
    }
    function returnArrayValue(uint256[] memory arr) public view returns (uint256) {
        return getArrayMember(arr, 5);
    }
    function returnArraySize(uint256[] memory arr) public view returns (uint256) {
        return arr.length;
    }
    function setArrayMember(uint256[] memory arr, uint256 position, uint256 value) public {
        require(position < arr.length, "No element with such index.");
        arr[position] = value;
    }
    function getArrayMember(uint256[] memory arr, uint256 position) public view returns (uint256) {
        require(position < arr.length, "No element with such index.");
        return arr[position];
    }
    function getArrayAddress(uint256[] memory arr) public view returns (address) {
        return address(arr);
