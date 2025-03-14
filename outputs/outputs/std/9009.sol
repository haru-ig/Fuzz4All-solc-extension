pragma solidity ^0.8.0;
contract ExampleClass {
    uint[] arrayTest;
    uint _arraySize;
    constructor(uint arrSize) {
        _arraySize = 2 * arrSize;
        arrayTest = new uint[](_arraySize);
        for (uint i=0; i<arrSize; i++) {
            arrayTest[i] += uint(1);
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
    function getArray(uint[] memory arr) public view returns (uint[3] memory) {
        uint[3] memory outputArr;
        outputArr = arr;
        for (uint i=0; i<arr.length; i++) {
            uint temp = arr[i];
            arr[i] = outputArr[arr.length-1-i];
            outputArr[arr.length-1-i] = tmp;
        }
        return output
