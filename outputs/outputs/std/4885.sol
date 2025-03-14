pragma solidity ^0.8.0;

contract MutateWithMap {
    mapping(uint => uint) private _array;
    mapping(uint => uint) private _numToSet;
    function initializeArray() public {
        _array[1] = _numToSet[4000];
        _array[2] = _numToSet[10];
        _numToSet[1] = _numToSet[4010];
        _numToSet[2] = _numToSet[981];
    }
}
```
