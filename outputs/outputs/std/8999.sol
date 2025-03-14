pragma solidity ^0.8.0;
contract Class2 {
    uint[] arrayTest;
    ExampleClass _obj1;
    ExampleClass _obj2;
    uint _arraySize;
    constructor(uint arrSize) {
        _arraySize = arrSize;
        arrayTest = new uint[](_arraySize);
        _obj1=ExampleClass(new ExampleClass(uint(1_000_000_000)));
        _obj2=ExampleClass(new ExampleClass(uint(1_000_000_000)));
    }
    function addObj(ExampleClass[2] memory objs) public {
        for (uint i=0; i<objs.length; i++) {
          for (uint j=0; j<objs[i].array.length; j++) {
            arrayTest[_arraySize - uint(objs[i].array[j])] += uint(objs[i].array[j]);
          }
        }
    }
}
contract Class1 {
    uint[] arrayTest;
    Class2 _obj;
    uint _arraySize;
    constructor(uint arrSize) {
        _arraySize = arrSize;
        arrayTest = new uint[](_arraySize);
        _obj=Class2(uint(1_000_000_000));
    }
    function addArr(uint[2][3] memory arrs) public {
        for (uint i=0; i<arrs.length; i++) {
            for (uint j=0; j<arrs[i].length; j++) {
                for (uint k=0; k<arrs[i][j]; k++) {
                  arrayTest[_arraySize - uint(i) * _arraySize - uint(j) * _arraySize - uint(k)] += uint(k);
                }
            }
        }
    }
}
contract Class3 {
    uint[] arrayTest;
    Class2 _obj1;
    Class2 _obj2;
    uint _arraySize;
    uint[3][3] memory testMulti[3];
    constructor(uint arrSize) {
        _arraySize = arrSize;
        arrayTest = new uint[](_arraySize);
        _obj1=Class2(uint(1_000_000_000));
        _obj2=Class2(uint(1_000_000_000));
    }
