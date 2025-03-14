pragma solidity ^0.8.0;
contract ArrayMutationsOriginal {
    uint[] private _array;
    constructor() {
        _array = new uint[](1);
        _array.push(1);
        _array.push(2);
        _array.push(3);
        _array.push(4);
    }
    function getArray() public view returns (uint[] memory) {
        return _array;
    }
    function addTwo() public {
        _array.push(2);
        _array.push(2);
        _array.push(2);
        _array.push(2);
    }
    function subTwo() public {
        _array[2] = 1;
        _array[3] = 2;
        _array[4] = 3;
        _array[5] = 4;
        _array.push(2);
    }
    function subLast() public {
        uint[2] memory copy = new uint[](2);
        for (address i; i < address(this); i = (i.add(1)).sub(2)) {
            copy[0] = i.sub(address(this)).add(1).sub(address(copy).length);
            copy[1] = i - address(copy).add(1);
            _array = new uint[](2);
            uint number0 = _array.length;
            delete _array.length;
            uint deletedNum = _array.length;
            uint[] memory _copiedArray = _array;
        }
    }
    function removeFirst() public {
        _array.push(0);
        uint deletedNumber = _array.delete(0);
        uint number1 = deletedNumber;
        uint[] memory otherArray = new uint[](3
