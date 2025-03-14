pragma solidity ^0.8.0;
contract ArrayAccess {
    uint[] public _array;

    constructor(uint _elementSize) {
        uint value = _elementSize;
        for (uint ii = 0; ii < value; ii++) {
            _array.push(ii);
        }
    }
    function setArrayTo(uint[5] memory _newNumbers) public {
        uint[] memory _newArray = new uint[](5);
        for (uint ii = 0; ii < _newNumbers.length; ii++) {
            _newArray[ii] = _newNumbers[ii];
        }
        _array = _newArray;
    }
}
