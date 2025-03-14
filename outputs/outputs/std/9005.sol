pragma solidity ^0.8.0;
contract ExampleClass {
    function min(uint[2] memory inputArr) public pure returns (uint) {
      uint minValue = inputArr[0];
      for (uint i=<fim_middle>      for (uint i=1; i<inputArr.length; i++) {
          if(inputArr[i] < minValue) minValue = inputArr[i];
      }
      return minValue;
    }
    function min3(uint[3] memory inputArr) public pure returns (uint) {
        uint minValue = inputArr[0];
        for (uint i=1; i<inputArr.length; i++) {
            if(inputArr[i]< minValue) minValue = inputArr[i];
        }
        return minValue;
    }
    function getLen() {
        return arrayTest.length;
    }
    function getArr() {
        uint[3] memory outputArr;
        outputArr[0] = arrayTest[_arraySize-1];
        for (uint i=1; i<_arraySize; i++) {
          outputArr[i] = arrayTest[i];
        }
        return outputArr;
    }
}
contract ExampleClass {
    function min(uint[2] memory inputArr) public pure returns (uint) {
      uint minValue = inputArr[0];
      for (uint i=1; i<inputArr.length; i++) {
          if(inputArr[i] < minValue) minValue = inputArr[i];
      }
      return minValue;
    }
    function smallestInArr(uint[] memory arr) public view returns (uint){
      uint minValue = arr
