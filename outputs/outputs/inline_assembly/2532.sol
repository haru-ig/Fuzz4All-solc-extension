pragma solidity ^0.8.0;
contract Comp7{
uint32 a;
constructor(uint32 _initialAmount) {
        a = _initialAmount;
}
function add(uint32 _b) public{
    a = a + _b;
}
    function subtract(uint32 _b) public{
        a = a - _b;
    }
    function multiply(uint32 _b) public{
        a = a * _b;
    }
    function divide(uint32 _b) public{
        a = a / _b;
    }
    function modulo(uint32 _b) public{
        a = a % _b;
    }
}
contract Comp5{
uint32 a;
constructor(uint32 _initialAmount) {
        a = _initialAmount;
}
function add(uint32 _b) public{
    a = a + _b;
}
    function subtract(uint32 _b) public{
        a = a - _b;
    }
    function multiply(uint32 _b) public{
        a = a * _b;
    }
    function divide(uint32 _b) public{
        a = a / _b;
    }
    function modulo(uint32 _b) public{
        a = a % _b;
    }
}
contract Comp2{
uint b;
constructor(uint32 _initialAmount) {
        b = _initialAmount;
}
function add(uint32 _b) public{
    b = b + _b;
}
    function subtract(uint32 _b) public{
        b = b - _b;
    }
    function multiply(uint32 _b) public{
        b = b * _b;
    }
    function divide(uint32 _b) public{
        b = b / _b;
    }
    function modulo(uint32 _b) public{
        b = b % _b;
    }
}
contract Comp4 {
uint a;
constructor(uint32 _initialAmount) {
        a = _initialAmount;
}
