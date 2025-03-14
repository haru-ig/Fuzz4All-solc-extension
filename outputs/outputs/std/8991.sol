pragma solidity ^0.8.0;
contract MutatorClass {
    uint[] _memory;
    uint _arraySize;
    constructor(uint arrSize) {
        _arraySize = arrSize;
        _memory = new uint[](_arraySize * 2);
    }
    function createMutated() public {
        uint i;
        for (i = 0; i < _arraySize; i++) {
            _memory[uint(i)] *= uint(2);
        }
    }
    function mutateTest(uint idx) public {
        uint x1 = _memory[idx];
        uint x2 = _memory[_arraySize-idx-1];
        uint x3 = _memory[_arraySize*_arraySize-(_arraySize-idx)*_arraySize];
        uint z = x1 + x2;
        _memory[idx] = x3;
        _memory[_arraySize-idx-1] = z;
    }
}

pragma solidity ^0.8.0;
contract MutatorClass2 {
    uint[] _memory;
    uint _arraySize;
    constructor(uint arrSize) {
        _arraySize = arrSize;
        _memory = new uint[](_arraySize * 3);
    }
    function createMutated() public {
        _memory[_arraySize*_arraySize] = 1;
        uint i;
        for (i = 1; i < _arraySize; i++) {
            _memory[uint(i)] *= uint(2);
        }
    }
    function mutateTest(uint idx) public {
        uint x1 = _memory[idx];
        uint x2 = _memory[_arraySize-idx-1];
        uint x3 = _memory[_arraySize*_arraySize-(_arraySize-idx)*_arraySize];
        uint z = x1 + x2;
        _memory[idx] = x3;
        _memory[_arraySize-idx-1] = z;
        _memory[_arraySize*_arraySize-(_arraySize-idx)*_arraySize] = ~(_arraySize - idx);
    }
}
