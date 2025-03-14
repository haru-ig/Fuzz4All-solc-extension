pragma solidity ^0.8.0;
contract ExampleClass {
    uint[2] arrayTest;
    uint _arraySize;
    constructor(uint[] memory arr) {
        _arraySize = arr.length;
        arrayTest = arr;
    }
    function getArrAt() public view returns (uint) {
        return _arraySize-1;
    }
    function getMin() public view returns (uint) {
        uint minValue = arrayTest[0];
        for (uint i=1; i<arrayTest.length; i++) {
            if(arrayTest[i] < minValue) minValue = arrayTest[i];
        }
        return minValue;
    }
    function getMin3() public view returns (uint) {
        uint minValue = arrayTest[0];
        for (uint i=1; i<arrayTest.length; i++) {
            if(arrayTest[i]- minValue < 0) minValue = arrayTest[i];
        }
        return minValue;
    }
    function getArrayLen() public view returns (uint) {
        return arrayTest.length;
    }
    function getArray() public view returns (uint[3] memory) {
        uint[3] memory outputArr;
        outputArr[0] = arrayTest[arrayTest.length-1];
        for (uint i=1; i<arrayTest.length; i++) {
          outputArr[i] = arrayTest[i];
        }
        return outputArr;
    }
}
