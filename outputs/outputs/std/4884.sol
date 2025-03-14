pragma solidity ^0.8.0;
contract MutateWithNum {
    mapping(uint => uint) private _array;
    mapping(uint => uint) private _numToSet;
    function initializeArray() public {
        _array[1] = 4000;
        _array[2] = 10;
        _numToSet[1] = 4010;
        _numToSet[2] = 981;
    }
}
