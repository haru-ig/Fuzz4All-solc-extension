pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    mapping(uint => uint) private _array;
    mapping(uint => uint) private _numToInsert;
    function initializeArray() public {
        _array[1] = 4000;
        _array[2] = 10;
        _numToInsert[1] = 4010;
        _numToInsert[2] = 981;
    }
}
