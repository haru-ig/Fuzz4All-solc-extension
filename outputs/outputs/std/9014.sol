pragma solidity ^0.8.0;
contract ExampleClass {
    uint[3] memory arrayTest;
    constructor(uint[3] memory arr) {
        arrayTest = arr;
    }
    function getArrAt(uint index) public view returns (uint) {
        uint arrIndex = _getArrNum(index);
        if (arrIndex >= arrayTest.length) {
            arrIndex = (uint)(arrayTest.length)-1;
        }
        return arrIndex;
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
        return minValue;
    }
    function getMin4(uint[3] memory inputArr) public view returns (uint) {
        uint minValue
