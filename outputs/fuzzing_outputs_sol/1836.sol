pragma solidity ^0.8.0;
contract FallbackCaller {
    uint constant private initialBalance = 100;
    uint constant private value = 200;
    uint private balance = initialBalance;
    uint constant public gasPrice = 500;
    constructor() { }
    function fallback() public payable {
        assert(msg.value == value);
        balance += value * gasPrice;
    }
}
