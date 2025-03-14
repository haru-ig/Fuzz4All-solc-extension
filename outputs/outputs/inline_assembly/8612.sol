pragma solidity ^0.8.0;
contract Modul {
    uint constant test2 = 98;
    uint constant test3 = 100;
    uint constant test4 = 0;
    uint constant test = 1000;
    function sum(uint _a, uint _b) public pure returns (uint) {
        uint temp = _a + _b + _b;
        temp = 100 * temp;
        return temp;
    }
    function divide(uint _numerator, uint _denominator) public pure returns (uint) {
        uint temp = _numerator;
        return divide(temp, _denominator);
    }
}
