pragma solidity ^0.8.0;
contract Multiprecision {
    uint num1;
    uint num2;
    uint res;
    uint divisor;

    function add(uint _num1, uint _num2) public pure returns (uint) {
        return _num1 + _num2;
    }
    function sub(uint _num1, uint _num2) public pure returns (uint) {
        return _num1 - _num2;
    }
    function mul(uint _num1, uint _num2) public pure returns (uint) {
        return _num1 * _num2;
    }
    function div(uint _num1, uint _num2) public pure returns (uint) {
        return _num1 / _num2;
    }
    function setNum(uint _num1, uint _num2) public pure {
        num1 = _num1;
        num2 = _num2;
    }
}
