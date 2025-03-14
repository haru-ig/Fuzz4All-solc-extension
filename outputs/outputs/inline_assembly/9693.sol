pragma solidity ^0.8.0;

contract SemanticYulContract {
uint internal contractCounter;
    function multiply(uint x) internal pure returns (uint) {
        uint temp = 100000 * x + 98765 * 1000 * 10 * c + 7 * c;
        contractCounter += temp;
        return contractCounter;
    }

    function sum(uint x) internal pure returns (uint) {
        uint temp = 5000000 + x * c + c;
        return contractCounter += temp;
    }

    function div(uint x) internal pure returns (uint) {
        uint temp = x + c;
        contractCounter += temp;
        return temp;
    }

    function sub(uint x) internal pure returns (uint) {
        uint temp = c + 5000000 + x;
        contractCounter += temp;
        return temp;
    }

    function divByZero() internal pure returns (uint) {
        contractCounter += c + 50;
    }

    function addBy(uint x) internal {
        uint temp = 98765*10*5*5000000 + x*10;
        contractCounter += temp;
    }
}
