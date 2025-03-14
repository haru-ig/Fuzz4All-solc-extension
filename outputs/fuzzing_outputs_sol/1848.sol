pragma solidity ^0.8.0;
contract MutatedFallbackRecipient {
    uint constant _value = 2;
    uint public balance;
    uint public constant _gasPrice = 500;
    constructor() {
        balance = 0;
    }
    receive() external payable {
        require(balance > 0 && msg.value == _value);
        balance = balance - 1;
    }
}
