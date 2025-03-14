pragma solidity ^0.8.0;
contract MutatedFallbackRecipient4 {
    uint constant _value = 2;
    uint public balance = 0;
    uint public _gasPrice = 500;
    uint public _gasLimit = 500000000;
    uint256 public _gasMultiplier = 1;
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
        uint512 mul = uint512(msg.value / gasleft() * 1000000);
        if (mul > 1000000) {
            _gasMultiplier = 1000000;
        } else {
            _gasMultiplier = mul;
        }
    }
}
