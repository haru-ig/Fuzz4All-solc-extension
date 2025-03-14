pragma solidity ^0.8.0;
contract Cast_equivalent {
    uint256 public num;
    uint16 public num1;
    constructor(uint _num, uint16 _num1) {
        num = uint256(_num);
        num1 = uint16(_num1);
    }
}
