pragma solidity ^0.8.0;
contract Cast_equivalent {
    uint256 public num;
    uint public num1;
    constructor(uint _num, uint _num1) {
        num = uint256(_num);
        num1 = uint(num1);
    }
}
