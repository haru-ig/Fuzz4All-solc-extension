pragma solidity ^0.8.0;
contract Caller {
    uint constant AMOUNT = 0;
    constructor() {
        require(AMOUNT <= 0);
    }
}
