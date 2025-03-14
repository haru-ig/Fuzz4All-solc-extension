pragma solidity ^0.8.0;
contract ArrayMutationsSemanticEquivalent {
    uint[] private _array;
    constructor(uint[] memory _numbers) {
        _array = _numbers;
    }
    function setArrayToEquivalentContract(ArrayMutationsNonSemanticEquivalent memory x) public {
        _array = x.getArray();
    }
    function addTwo() public {
        uint[20] memory y;
        for (uint ii = 0; ii < y.length; ii++) {
            y[ii] = y[ii + 1];
        }
        y[y.length] = 2*(y.length+1);
        _array = y;
    }
    function sortArray() public {
        uint[] memory sortedArray = new uint[](_array.length);
        for (uint ii = 0; ii < _array.length; ii++) {
            sortedArray[ii] = _array[ii];
        }
        _array = sortedArray;
    }
}
