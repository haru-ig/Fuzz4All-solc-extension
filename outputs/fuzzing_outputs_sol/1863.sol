pragma solidity ^0.8.0;
contract MutatedFallbackRecipient2 {
    uint constant _value = 2;
    uint public balance = 0;
    uint public _gasPrice = 500;
    constructor() {
        balance = 0;
    }
    receive() external payable {
        balance = 0;
        require(balance > 0 && msg.value == _value);
    }
    fallback() external payable {
        balance = 1000;
    }
}

pragma solidity ^0.8.0;
contract MutatedFallbackRecipient3 {
    uint constant _value = 2;
    uint public balance = 0;
    uint public _gasPrice = 500;
    uint public _gasLimit = 500000000;
    constructor() {
        balance = 0;
    }
    receive() external payable {
        balance = 0;
        require(balance > 0 && msg.value == _value);
    }
    fallback() external payable {
        balance = 1000;
        require(msg.value == _gasLimit, "Fallback failed");
    }
}
