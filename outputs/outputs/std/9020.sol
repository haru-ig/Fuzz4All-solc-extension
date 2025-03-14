pragma solidity ^0.8.0;
contract ExampleClass {
    uint[5] arrayTest;
    uint _arraySize;
    constructor(uint[5] memory arr) {
        _arraySize = arr.length;
        arrayTest = arr;
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
        outputArr[0] = arrayTest[_arraySize-1];
        for (uint i=1; i<_arraySize; i++) {
          outputArr[i] = arrayTest[i];
        }
        return outputArr;
    }
}
