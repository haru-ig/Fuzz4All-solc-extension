pragma solidity ^0.8.0;
contract SemanticallyEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant THREE = 3;

    function add (uint _a, uint _b) public pure returns (uint) {
        return _a + _b;
    }
    function subtract (uint _a, uint _b) public pure returns (uint) {
        return _a - _b;
    }
    function multiply (uint _a, uint _b) public pure returns (uint) {
        return _a * _b;
    }
    function divide (uint _a, uint _b) public pure returns (uint) {
        return _a / _b;
    }
    function remainder (uint _a, uint _b) public pure returns (uint) {
        return _a % _b;
    }
    function lessThan80 (uint _x) public pure returns (bool) {
        return _x < 80;
    }
    function greaterThanZero (uint _x) public pure returns (bool) {
        return _x > ZERO;
    }
    function equalToZero (uint _x) public pure returns (bool) {
        return _x == ZERO;
    }
    function lessThan300 (uint _x) public pure returns (bool) {
        return _x < 300;
    }
    function greaterThan30 (uint _x) public
