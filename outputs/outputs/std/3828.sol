pragma solidity ^0.8.0;
contract ArrayExample {
    uint256[] private memory Array;
    mapping(uint256 => uint256) private memory mappingWithAddress;
    constructor () {}

    function getStorageArray() public view returns (uint256[] memory) {
        return Array;
    }

    function getAddressToUint256Mapping() public view returns (mapping (address => uint256) memory) {
        return mappingWithAddress;
    }

    function storeUint256ToArray(uint256[] memory values, address i) public {
        require(mappingWithAddress[i] < values.length, "Address is not in the list. Cannot be assigned.");
        Array[i] = values[mappingWithAddress[i]];
        mappingWithAddress[i] += 1;
    }

    function getUint256FromArray(uint256[] memory values, address i) public view returns (uint256) {
        return values[i];
    }

    function sortAndPrintToArray(uint256[] memory arr) public view {
        uint256 lowerBound;
        for (uint256 i = 1; i < arr.length; i++) {
            if (arr[lowerBound] > arr[i]) {
                lowerBound += 1;
            }
        }
        lowerBound += 1;
        uint256 upperBound;
        for (uint256 i = arr.length - 1; i > upperBound; i--) {
            if (arr[lowerBound] < arr[i]) {
                upperBound -= 1;
            }
        }
        if (arr[lowerBound] < arr[upperBound]) {
            uint256 temp = arr[lowerBound];
            arr[
