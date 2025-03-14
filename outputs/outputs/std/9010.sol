pragma solidity ^0.8.0;
import "./ExampleClass.sol";
contract ExampleClass {
    ExampleClass example;
    uint _arrSize;

    constructor(uint arrSize) {
        _arrSize = arrSize;
        example = new ExampleClass(arrSize);
    }
    function getArray() public view returns (uint[3] memory) {
        uint[3] memory outputArr;
        outputArr[0] = example.getArrAt(example.getArrayLen()-1);
        for (uint i=1; i<_arrSize; i++) {
          outputArr[i] = example.getArrAt(example.getArrayLen()-1);
        }
        return outputArr;
    }
    function getMin(uint[2] memory inputArr) public view returns (uint) {
        uint minValue = inputArr[0];
        uint index = inputArr.length-1;
        while(minValue == inputArr[index] && --index) {
          minValue = inputArr[index];
        }
        return minValue;
    }
    function getMin3(uint[3] memory inputArr) public view returns (uint) {
        uint minValue = inputArr[0];
        uint index = inputArr.length-1;
        while(minValue == inputArr[index] && --index) {
          minValue = inputArr[index];
        }
        return minValue;
    }
}
