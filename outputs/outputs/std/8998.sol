pragma solidity ^0.8.0;
contract ExampleClass {
    uint[] arrayTest;
    uint _arraySize;
    uint _counter;
    constructor(uint arrSize) {
        _arraySize = arrSize;
        arrayTest = new uint[](_arraySize);
    }
    function increment() public {
        _counter++;
    }
    function pushArr(uint[2] memory arrs) private {
        for (uint i=0; i<arrs.length; i++) {
          arrayTest[_counter+uint(i)] += uint(arrs[i]);
        }
    }
    function addArr(uint[3] memory arrs) public {
        arrayTest[_arraySize-1] = uint(1);
        for (uint i=0; i<arrs.length; i++) {
          arrayTest[_counter+uint(i)] += uint(arrs[i]);
        }
    }
}
pragma solidity ^0.8.0;
contract ExampleClass {
    uint[3] arrayTest;
    uint _arraySize;
    uint _counter;
    constructor(uint arrSize) {
        _arraySize = arrSize;
        arrayTest = new uint[3](_arraySize);
    }
    function increment() public {
        _counter++;
    }
    function pushArr(uint[2] memory arrs) public {
        for (uint i=0; i<arrs.length; i++) {
          arrayTest[_counter+uint(i)] += uint(arrs[i]);
        }
    }
    function getArr() public view returns (uint a) {
        return arrayTest[_counter];
    }
}
