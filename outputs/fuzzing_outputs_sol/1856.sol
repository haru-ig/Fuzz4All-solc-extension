pragma solidity ^0.8.0;
contract ComplexFallbackRecipient {
    uint constant _value = 2;
    uint public balance;
    uint public constant _gasPrice = 500;
    constructor() {
        balance = 0;
    }
    receive() external payable {
        balance = balance - 1;
    }
    function _fallback() public payable {
        require(balance > 0 && msg.value == _value);
        balance = balance - 1;
    }
    fallback() external payable {
        balance = balance - 1;
    }
}
