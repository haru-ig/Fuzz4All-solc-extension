pragma solidity ^0.8.0;
contract ExampleClass {
    uint[] immutable private numbers;
    uint public _arraySize;
    constructor(uint arrSize) {
        _arraySize = arrSize;
        numbers = new uint[](_arraySize);
    }
    function increment() public {
        numbers[_arraySize-1] += uint(1);
    }
    function pushArr(uint[2] memory arrs) private {
        for (uint i=0; i<arrs.length; i++) {
          numbers[_arraySize-1 + uint(i)] += uint(arrs[i]);
        }
    }
    function addArr(uint[3] memory arrs) public {
        numbers[_arraySize-1] += uint(1);
        for (uint i=0; i<arrs.length; i++) {
          numbers[_arraySize-uint(i)] += arrs[i];
        }
    }
}
