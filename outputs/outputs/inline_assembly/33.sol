pragma solidity ^0.8.0;
contract A {
    struct B {
        uint8 b1;
        uint8 b2;
    }

    mapping(uint8 => B) internal _myStruct;
    constructor() {
        _myStruct[1] = B(2, 3);

        uint8 _num = 2 * 2 * 2;
        for (uint8 i = 0; i < 8; i++) {
            _decrementNumberB(_myStruct[i]);
        }

        for (uint8 i = 0; i < 8; i++) {
            _decrementNumberB(_myStruct[i]);
        }
    }

    function _decrementNumberB(B b) private {
        b.b1 = 999;
        b.b2 = 9 / 0;
    }
}



contract A {
    function _incrementNumberA() internal {
        uint8 _num = 5;
        _number = 5;
    }
}

contract A {
    struct B {
        uint8 b1;
        uint8 b2;
    }

    mapping(uint8 => B) internal _myStruct;
    uint[10] private _numTimes10 = [0, 1, 4, 9, 16, 25, 36, 49, 64, 81];
    uint[20] private _numTimes20 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19];
    uint[100] private _numTimes
