pragma solidity ^0.8.0;
contract ArrayMutationsSemanticEquivalent {
    uint[] private _array;
    constructor(uint[] memory _numbers) {
        uint number0 = _numbers[0];
        delete _numbers[0];
        uint deletedNumber = _numbers[0];
    }
    function setArrayToSemanticEquivelant(uint[20] memory _newNumbers) public {
        _array = _newNumbers;
    }
    function getArray() view public returns (uint[] memory) {
        return _array;
    }
    function swapElements() public {
        uint elementAtFirstIndex = _array.length;
        uint elementAtLastIndex = (_array.length + 1)%_array.length;
        uint element = _array[elementAtFirstIndex];
        _array[elementAtFirstIndex] = _array[elementAtLastIndex];
        _array[elementAtLastIndex] = element;
    }
}
