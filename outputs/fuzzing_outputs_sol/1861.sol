pragma solidity ^0.8.0;
contract MutatedFallbackMessageRecipient {
    uint constant _value = 2;
    uint public balance = 0;
    uint public _gasPrice = 500;
    constructor() {
        balance = 0;
    }
    function mutatedFunction() public view returns (uint) {
        return balance;
    }
    receive() external payable {
        balance = 0;


        require(balance > 0 && msg.value == _value);
    }
}
