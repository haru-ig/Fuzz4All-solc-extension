pragma solidity ^0.8.0;
contract ExampleClass {
    uint[] arrayTest;
    uint _arraySize;
    constructor(uint arrSize) {
        _arraySize = arrSize;
        arrayTest = new uint[](_arraySize);
    }
    function increment1() public {
        if (arrayTest.length == _arraySize) {
            uint[] memory _newArrTest = new uint[](_arraySize * 2);
            for (uint i = 0; i < _arraySize; i++) {
                _newArrTest[i] = arrayTest[i];
            }

            uint[] memory _newArrTest2;
            _newArrTest2 = new uint[](_arraySize);
            for (uint i = 0; i < _arraySize; i++) {
                _newArrTest2[i] = _newArrTest[i];
            }
            arrayTest = _newArrTest2;
        } else {
            arrayTest[_arraySize-1] += uint(1);
        }
    }
}
