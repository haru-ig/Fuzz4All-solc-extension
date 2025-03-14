pragma solidity ^0.8.0;
contract ArrayMutationsSemantic20 {
    uint[20] public _array;
    constructor(uint[20] memory _numbers) {
        uint number0 = _numbers[0];
        delete _numbers[0];
        uint deletedNumber = _numbers[0];
    }
    function setArrayTo(uint[20] memory _newNumbers) public {
        uint[] memory _newArray = new uint[](20);
        for (uint ii = 0; ii < _newNumbers.length; ii++) {
            _newArray[ii] = _newNumbers[ii];
        }
        _array = _newArray;
    }
    function getArray() view public returns (uint[20] memory) {
        return _array;
    }
    function addTwo() public {

        uint[20] memory originalArray = _array;
        _array.push(20+ originalArray.length);
    }
    function sortArray() public {
        uint[20] memory sortedArray = new uint[20];
        for (uint ii = 0; ii < _array.length; ii++) {
            sortedArray[ii]
