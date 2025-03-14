pragma solidity ^0.8.0;
contract FallbackRecipient {
    uint constant _value = 2;
    uint public balance;
    uint public constant _gasPrice = 500;
    constructor() {
        balance = 0;
    }
    receive() external payable  {
    }
}
