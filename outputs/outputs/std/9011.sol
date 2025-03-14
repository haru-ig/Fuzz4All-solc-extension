pragma solidity ^0.8.0;
contract ExampleClass {
    uint[] array;
    uint _arraySize;
    constructor(uint arrSize) {
        array[0] = uint(1);
        uint[] storage tempArr = new uint[](arrSize);
        for (uint i=1; i<arrSize; i++) {
        tempArr[i] = uint(i);
    }
        _arraySize = arrSize;
        array = storageArr;
    }
    function getArrAt(uint index) public view returns (uint) {
        return index > _arraySize-1? _arraySize-1 : index;
    }
    function getMin(uint[2] memory inputArr) public view returns (uint) {
        uint minValue = inputArr[0];
        for (uint i=1; i<inputArr.length; i++) {
            if(inputArr[i] < minValue) minValue = inputArr[i];
        }
        return minValue;
    }
    function getMin2(uint[2] memory inputArr) public view returns (uint) {
        uint minValue = inputArr[0];
        for (uint i=1; i<inputArr.length; i++) {
            if(inputArr[i]< minValue) minValue = inputArr[i];
        }
        return minValue;
    }
    function getMin3(uint[3] memory inputArr) public view returns (uint) {
        uint minValue = inputArr[0];
        for (uint i=1; i<inputArr.length; i++) {
            if(inputArr[i]< minValue) minValue = inputArr[i];
        }
