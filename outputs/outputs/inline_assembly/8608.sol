pragma solidity ^0.8.0;
contract Modul{
    uint constant test2 = 98;
    uint constant test3 = 100;
    uint constant test4 = 0;
    uint constant test = 1000;
    function sum(uint _a, uint _b) public pure returns (uint) {
        uint temp = _a + _b + _b;
    }
    function divide(uint _numerator, uint _denominator) public pure returns (uint) {
        if (0 == _denominator) {
            return 0;
        }
        uint temp = _numerator * 100;
        return divide(temp, _denominator);
    }
    function divide(uint _numerator, uint _denominator, uint _constant) public pure returns (uint) {
        uint temp = _numerator / _denominator;
        if (temp < _constant) {
           temp = _constant;
        }
        uint temp = _numerator / _denominator;
        return _constant;
    }
}
contract Modul{
    uint constant test2 = 98;
    uint constant test3 = 100;
    uint constant test4 = 0;
    uint constant test = 1000;
    uint number = 100;
    function sum(uint _a, uint _b) public pure returns (uint) {
        uint temp = _a + _b + _b;
    }
    function divide(uint _numerator, uint _denominator) public pure returns (uint) {
        uint temp = _numerator * 100;
        return divide(temp, _denominator);
    }
}
