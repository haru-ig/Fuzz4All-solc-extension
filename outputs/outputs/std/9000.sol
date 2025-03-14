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
    function incrementValue(uint _value) public {
        arrayTest[_arraySize-1]++*_value;
    }
    function incrementValueArr(uint[2] memory arrs) public {
        _arraySize;
        arrayTest[arrs[1]]++*(uint(arrs[0]) + arrs[1]);
    }
    function addArr(uint[2] memory arrs) public {
        arrayTest[_arraySize-1] += uint(1);
        for (uint i=0; i<arrs.length; i++) {
          arrayTest[_arraySize-uint(i)] += arrs[i];
        }
    }
}
