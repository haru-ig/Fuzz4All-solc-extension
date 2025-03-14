pragma solidity ^0.8.0;
contract MutatedFallbackRecipient4 {
    uint constant _value = 2;
    uint public balance = 0;
    uint public _gasPrice = 500;
    uint public _gasLimit = 500000000;
    uint public _sendAmount = 500000000;
    constructor() {
        balance = 0;
    }
    receive() external payable {
        require(msg.sender == address(_this));
        if (msg.value < _value) {
            payable(msg.sender).transfer(msg.value);
        } else {
            transfer(msg.sender, msg.value);
        }
    }
    fallback() external payable {
        require(msg.value == _gasLimit, "Fallback failed");
        transfer(_this, _sendAmount);
    }
}
