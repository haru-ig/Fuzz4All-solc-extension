pragma solidity ^0.8.0;
contract SameOld {
    mapping(address => uint256) public x;
    uint constant AMOUNT = 1;
    constructor() public {
        x[0] = AMOUNT;
    }
}
