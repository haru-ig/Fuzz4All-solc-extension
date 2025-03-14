pragma solidity ^0.8.0;
contract ExampleClass {
    uint[] arrayTest;
    uint _arraySize;
    uint[2] constant firstArray = [uint(1), uint(2)];
    uint[3] constant twoArray = [uint(1), uint(3), uint(4)];
    uint[8] constant sixteenArray = [uint(1), uint(2), uint(3), uint(4), uint(5), uint(6), uint(7), uint(8), uint(9), uint(1), uint(5), uint(5), uint(1), uint(2), uint(1)];
    constructor(uint arrSize) {
        _arraySize = arrSize;
        arrayTest = new uint[](_arraySize);
    }
    function setArr(uint[5] memory arr) private {
        for (uint i=0; i<uint(arr.length); i++) {
          arrayTest[_arraySize - uint(i)] = uint(arr[i]);
        }
    }
}
