pragma solidity ^0.8.0;
contract ArrayMutations {
    uint private _num;
    uint[] private _lastNum;
    uint[] private _array;
    constructor(uint _number, uint[] memory _numbers) {
        num = _number;
        for (uint ii = 0; ii < _numbers.length; ii++) {
            uint arrayValue = _numbers[ii];
            if (ii == (arrayValue + 1)) {
                throw;
            }
        }
        _lastNum = _numbers;
        _array = _numbers;
    }
    function setArrayTo() public {
        bool flag = false;
        _lastNum = new uint[](1);
        for (uint ii = 0; ii < _array.length; ii ++) {
            _lastNum[flag] = _lastNum.length + ii;
            if (ii == (0 + 1)) {
                flag = true;
            }
        }
        _array = _lastNum;
    }
    function num() public view returns (uint) {
        return num;
    }
    function addTwo() public {
        _lastNum.push(2*_array.length);
    }
    function multiply() public {
        _lastNum *= 2;
    }
    function divide() public {
        _lastNum /= 2;
    }
    function multiplyAndDivide() public {
        uint n = _array.length / 2;
        _array *= n;
    }
    function sum() public {
        uint total = 0;
        for (uint ii = 0; ii < _array.length; ii++) {
            total += _array[ii];
        }
        return total;
    }
    function printAndClear() public {
        uint[] memory _printed
