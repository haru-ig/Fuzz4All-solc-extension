pragma solidity ^0.8.0;
contract MutatedApp_3 {
    struct AddressStruct {
        address address;
        uint256 value;
    }
    struct AddressArrayStruct {
        uint256 length;
        AddressStruct[] memory addr;
    }
    uint256 private constant MIN = 0;
    uint256 private constant MAX = 28;
    function getArrayValueAt(AddressArrayStruct memory arr, uint idx) public view returns (uint256 value) {
        if (arr.addr.length > idx) {
            value = arr.addr[idx].value;
        }
    }
    function findMinimalElement(AddressArrayStruct memory array) public view returns (uint minimal) {
        for (uint i = 0; i < array.addr.length; i++) {
            if (array.addr[i].value < minimal) {
                minimal = array.addr[i].value;
            }
        }
    }
    function findMaximalElement(AddressArrayStruct memory array) public view returns (uint maximal) {
        for (uint i = 0; i < array.addr.length; i++) {
            if (array.addr[i].value > maximal) {
                maximal = array.addr[i].value;
            }
        }
    }
    function arraySum(AddressArrayStruct memory array) public returns (uint sum) {
        uint sumCurrent = 0;
        for (uint i = 0; i < array.addr.length; i++) {
            sumCurrent += array.addr[i].value;
        }
    }
    function sortArrayUsingBubbleSort(AddressArrayStruct memory arr) public {
        while
