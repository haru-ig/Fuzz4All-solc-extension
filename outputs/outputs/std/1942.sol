pragma solidity ^0.8.0;
contract Cast_equivalent {
    uint public num;
    uint public num1;
    constructor(uint256 _num, uint _num1) {
        num = uint(_num);
        num1 = uint(_num1);
    }
