pragma solidity ^0.8.0;
contract ExampleClass {
    uint[] arrayTest;
    uint _arraySize;
    constructor(uint arrSize) {
        _arraySize = arrSize;
        arrayTest = new uint[](_arraySize);
    }
    function increment() public {
        if (arrayTest.length == _arraySize) {
            arrayTest.push(uint(1));
        } else {
            arrayTest[_arraySize-1] += uint(1);
        }
    }
}
