pragma solidity ^0.8.0;

contract Caller {
    FallbackRecipient public recipient;
    uint public balance;
    uint public constant _gasPrice = 500;
    constructor() {
        balance = 0;
        recipient = new FallbackRecipient();
    }
    fallback() external payable {
        recipient.balance += 10000;
        recipient.balance += (_gasPrice * 2);
    }
}
