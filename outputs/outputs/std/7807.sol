pragma solidity ^0.8.0;
contract Array {
    uint[] public array;
    function findMin() public view returns (uint) {
        if(array.length == 0) return 0;
        uint returnVal = array[0];
        for(uint i = 0; i < array.length; i++) {
            uint compare = array[i];
            if(compare < returnVal) {
                returnVal = compare;
            }
        }
        return returnVal;
    }
    function findMax() public view returns (uint) {
        if(array.length == 0) return 0;
        uint returnVal = array[0];
        for(uint i = 0; i < array.length; i++) {
            uint compare = array[i];
            if(compare > returnVal) {
                returnVal = compare
