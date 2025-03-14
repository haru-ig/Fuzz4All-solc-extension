pragma solidity ^0.8.0;
contract ArrayMutationsOriginal {
    uint[] private _lastNum;
    uint[] private _array;
    constructor(uint[] memory _numbers) {
        uint number0 = _numbers[0];
        delete _numbers[0];
        uint deletedNumber = _numbers[0];
    }
    function setArrayToOriginal() public {
        uint[] memory _newArray;
        _newArray[0] = _array.length;
        _lastNum = _newArray;
        _array = _newArray;
    }
    function getArray() public view returns (uint[] memory) {
        return _array;
    }
    function addTwo() public {
        _array.push(2*_array.length);
    }
    function sortArray() public {
        uint[] memory sortedArray = new uint[](_array.length);
        for (uint ii = 0; ii < _array.length; ii++) {
            sortedArray[ii] = _array[ii];
        }
        _array = sortedArray;
    }
}
