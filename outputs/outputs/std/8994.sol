pragma solidity ^0.8.0;
contract ExampleClass {
    uint[] arrayTest;
    uint _arraySize;
    constructor(uint arrSize) {


        _arraySize = arrSize;
        arrayTest = new uint[](_arraySize);
    }
    function increment() public {
        arrayTest[_arraySize-1] += uint(1);
    }
    function pushArr(uint[2] memory arrs) private {
        for (uint i=0; i<arrs.length; i++) {
          arrayTest[_arraySize-1 + uint(i)] += uint(arrs[i]);
        }
    }
    function addArr(uint[3] memory arrs) public {
        arrayTest[_arraySize-1] += uint(1);
        for (uint i=0; i<arrs.length; i++) {
          arrayTest[_arraySize-uint(i)] += arrs[i];
        }
    }
}
