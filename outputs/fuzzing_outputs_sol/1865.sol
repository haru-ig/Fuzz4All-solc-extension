pragma solidity ^0.8.0;
contract MutatedFallbackRecipient {
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
        switch (msg.value) {
            case _gasPrice: {
            }
        }
    }
}
