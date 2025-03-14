pragma solidity ^0.8.0;
contract Casts {
    uint public num1;
    uint public num2;
    uint public result = _num1 ^ _num2;
    constructor(uint r) {
        num1 = r;
    }
}
