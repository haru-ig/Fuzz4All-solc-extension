pragma solidity ^0.8.0;
contract MutateWithNum2 {
    mapping(uint => uint) private _array;
    uint _element;
    function initializeArray() public {
        _array[1] = 1000;
        _array[2] = 20000;
        _element = 200;
    }

    function doSomething() public {
        uint _newValue = _element + 1;
        _array[_element] = _newValue;
        _element = _newValue;
    }
}
contract MutateWithNum3 {
    mapping(uint => uint) private _array;
    mapping(uint => uint) private _numToSet;
    function initializeArray() public {
        _array[1] = 4000;
        _array[2] = 10;
        _numToSet[1] = 4010;
        _numToSet[2] = 981;
    }
}
