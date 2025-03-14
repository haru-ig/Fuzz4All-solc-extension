pragma solidity ^0.8.0;
contract ExampleClass_2 {
    uint[] arrayTest;
    uint _arraySize;
    constructor(uint arrSize) {
        _arraySize = arrSize;
        arrayTest = new uint[](_arraySize);
        for (uint i=0; i<arrSize; i++) {
          arrayTest[i] += uint(1);
        }
    }
    function getArrAt(uint index) public view returns (uint) {
        uint arrLength = arrayTest.length - 1;
        if (index > arrLength) {
            return arrLength;
        } else {
            return index;
        }
    }
    function getMin(uint[2] memory inputArr) public view returns (uint) {
        uint minValue = inputArr[0];
        for (uint i=1; i<inputArr.length; i++) {
            if(inputArr[i] < minValue) minValue = inputArr[i];
        }
        return minValue;
    }
    function getMin3(uint[3] memory inputArr) public view returns (uint) {
        uint minValue = inputArr[0];
        for (uint i=1; i<inputArr.length; i++) {
            if(inputArr[i]< minValue) minValue = inputArr[i];
        }
        return minValue;
    }
    function getArrayLen() public view returns (uint) {
        return arrayTest.length;
    }
    function getArray() public view returns (uint[3] memory) {
        uint[3] memory outputArr;
        outputArr[0] = arrayTest[0];
        for (uint i=1
