pragma solidity ^0.8.0;
contract MutateWithMath {
    mapping(uint => uint) private _array;
    function initializeArray() public {
        _array[1] = 4000;
        _array[2] = 10;
        _array[4] = 1;
        delete _array[2];
        _array[5] = 700;
        _numToInsert[1] = 4010;
        _numToInsert[2] = 981;
    }
}
