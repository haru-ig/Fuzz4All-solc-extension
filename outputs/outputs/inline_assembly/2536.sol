pragma solidity ^0.8.0;
contract Comp34{
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
}
