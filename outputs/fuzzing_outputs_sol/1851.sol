pragma solidity ^0.8.0;
contract MutatedFallbackRecipient2 {
    uint constant _value = 2;
    uint public balance;
    uint public constant _gasPrice = 500;
    constructor() {
        balance = 0;
    }
    receive() external {
        require(balance > 0 && msg.value == _value);
        balance = balance - 1;

        msg.data = "Not empty".repeat(1024);
    }
}



pragma solidity ^0.8.0;
