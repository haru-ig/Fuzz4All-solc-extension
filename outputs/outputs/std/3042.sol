pragma solidity ^0.8.0;
contract ArrayMutationsWithoutMutating {
    uint[] private _lastNum;
    uint[] private _array;
    constructor(uint[] memory _numbers) {
        uint number0 = _numbers[0];
        _lastNum = _numbers;
        _array = _numbers;
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
        _lastNum = _array;
        _array = sortedArray;
    }
    function reverseArray() public {
        uint[] memory reverser = new uint[](_lastNum.length);
        for (uint ii = 0; ii < _lastNum.length; ii++) {
            reverser[ii] = _lastNum.length - ii;
        }
        _lastNum = reverser;
        _array = reverser;
    }
}
