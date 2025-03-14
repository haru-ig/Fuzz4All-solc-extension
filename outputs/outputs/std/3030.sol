pragma solidity ^0.8.0;
contract ArrayMutationsSemanticEquivelant {
    uint[] private _lastNum, _array;
    constructor(uint[] memory _numbers) {
        uint number0 = _numbers[0];
        delete _numbers[0];
        uint deletedNumber = _numbers[0];
    }
    function setArrayToSymbolicEquivelant(uint[20] memory _newNumbers) public {
        uint[] memory _newArray = new uint[](20);
        for (uint ii = 0; ii < _newNumbers.length; ii++) {
            _newArray[ii] = _newNumbers[ii];
        }
        lastNum = new uint[](20);
        for (uint ii = 0; ii < _array.length; ii++) {
            lastNum[ii] = _array[ii];
        }
        arrayValue = _newArray;
    }
    function getArray() public view returns (uint[] memory) {
        if (!(_array[0]==lastNum[0])) {
            return _array;
        }
        else {
            return lastNum;
        }
    }
    function addTwo() public {
        arrayValue.push(2*lastNum[0]);
    }
    function sortArray() public {
        uint[] memory sortedArray = new uint[](arrayValue.length);
        for (uint ii = 0; ii < arrayValue.length; ii++) {
            sortedArray[ii] = arrayValue[ii];
        }
        arrayValue = sortedArray;
    }
}
