pragma solidity ^0.8.0;
contract Complex {
    uint256 public num;
    uint8 num2;
    constructor(uint256 _num, uint8 _num2) {
        num = uint256(_num);
        num2 = uint8(_num2);
    }
}
