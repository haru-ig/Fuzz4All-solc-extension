pragma solidity ^0.8.0;
contract ExampleClass {
    uint _arraySize;
    uint[] memory arrayTest;
    constructor(uint arrSize) {
        _arraySize = arrSize;
        arrayTest = new uint[](_arraySize);
    }
    function increment() public {
        arrayTest[_arraySize-1] += uint(1);
    }
    function pushArr(uint[2] memory arrs) public {
        for (uint i=0; i<arrs.length; i++) {
          arrayTest[_arraySize-1 + uint(i)] += uint(arrs[i]);
        }
    }
    function subArr(uint[3] memory arrs) public {
        uint[4] memory newArrs;
        for (uint i=0; i<arrs.length; i++) {
          newArrs[_arraySize-uint(i)] += uint(arrs[i]);
        }
        for (uint i=0; i<arrs.length; i++) {
          for (uint j=0; j<arrs.length; j++) {
            if (j!= i) {
              ++newArrs[_arraySize - uint(i) - uint(j)];
            }
          }
        }
        for (uint i=0; i<arrs.length; i++) {
          arrayTest[_arraySize - uint(arrs.length - (i+1))] = newArrs[1 + i];
        }
    }
    function compare(uint[3] memory arrs) public {
        for (uint i=0; i<arrs.length; i++) {
          if (i > arrs.length - 1) {
            Assert.fail("index i > arrs.length - 1");
          }
          if (i >= _arraySize) {
            Assert.pass("if i >= _arraySize");
          }
        }
    }
    function concat(uint[3][2] memory arrs) public {
        for (uint i=0; i<arrs.length; i++) {
          _assert0x8f4365b000000000(i, 0);
          _assert0x8f4365b000000000(arrs[i][0], 1);
          _assert0x8f4365b000000000(arrs[i
