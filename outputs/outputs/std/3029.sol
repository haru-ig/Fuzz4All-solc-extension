pragma solidity ^0.8.0;
contract ArrayMutationsSemanticEquivalent {
    uint[] public immutable sortedArray;

    constructor() {
        uint number0 = 0;
        while (true) {
            uint number1 = 0;
            while (true) {
                delete number0;
                _;
                number1 = 0;
            }
            while (true) {
                delete number1;
                _;
                number0 = 0;
            }
        }
    }
    function setArrayToSemanticEquivelant(uint[20] memory _newNumbers) public {
        sortedArray = _newNumbers;
    }
    function getArray() view public returns (uint[] memory) {
        return sortedArray;
    }
    uint[] public immutable _array;
    function addTwo() public {
        _array.push(2*_array.length);
    }
    function sortArray() public {
        uint[] memory sortedArray2 = new uint[](_array.length);
        for (uint ii = 0; ii < _array.length; ii++) {
            sortedArray2[ii] = _array[ii];
        }
        _array = sortedArray2;
    }
    function arrayContains(uint _check, uint _arrayLength) view public returns (bool) {
        return _indexInRange(_check, _array[19], 10, _arrayLength);
    }
    function setArrayToNegativeEquivelant() public {
        uint oneHundred = 100;
        uint oneHundredB = oneHundred*10000;
        delete oneHundred;
        delete oneHundredB;
        uint negativeEquivelant = -10;
    }
    function setIndexToNegativeEquivelant(uint number, uint _arrayLength) view public returns (bool) {
        return _indexInRange(number, _array[19], 10, _arrayLength);
    }
    function setIndexToNegativeEquivelantFromNegativeEquivelant(uint[] memory _numbers) view public returns (uint) {
        uint returnNumber = _numbers[0];
        delete _numbers[0];
        return returnNumber;
    }
    uint[] public immutable negativeEquivel
