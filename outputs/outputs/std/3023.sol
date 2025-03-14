pragma solidity ^0.8.0;
contract ArrayMutationsNonSemanticEquivalent {
    uint[] private _array;
    constructor(uint[] memory _numbers) {
        uint number0 = _numbers[0];
        delete _numbers[0];
        uint deletedNumber = _numbers[0];
    }
    function setArrayToNonSementicEquivelant(uint[20] memory _newNumbers) public {
        uint[] memory _newArray = new uint[](20);
        for (uint ii = 0; ii < _newNumbers.length; ii++) {
            _newArray[ii] = _newNumbers[ii];
        }
        _array = _newArray;
    }
    function getArray() view public returns (uint[] memory) {
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
