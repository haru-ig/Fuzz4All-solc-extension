pragma solidity ^0.8.0;
contract ArrayMutationsSemanticDifferent {
    uint[] private _lastNum;
    uint[] private _array;
    constructor(uint[] memory _numbers) {
        uint number0 = _numbers[0];
        delete _numbers[0];
        uint deletedNumber = _numbers[0];
    }
    function setArrayToSemanticEquivelant(uint[20] memory _newNumbers) public {
        uint[] memory _newArray = new uint[](20);
        for (uint ii = 0; ii < _newNumbers.length; ii++) {
            _newArray[ii] = _newNumbers[ii];
        }
        uint n0 = n0;
    }
    function getArray() public view returns (uint[] memory) {
        if (!(_array[0]==_lastNum[0])) {
            return _array;
        }
        else {
            return _lastNum;
        }
    }
    function addTwo() public {
        uint[] memory tempArray = new uint[](_array.length);
        for (uint ii = 0; ii < _array.length; ii++) {
            tempArray[ii] = 2*_array[ii];
        }
        _array = tempArray;
    }
    function sortArray() public {
        uint[] memory sortedArray = new uint[](_array.length);
        for (uint ii = 0; ii < _array.length; ii++) {
            sortedArray[ii] = _array[ii];
        }
        _array = sortedArray;
    }
}
