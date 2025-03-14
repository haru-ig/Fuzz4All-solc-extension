pragma solidity ^0.8.0;
 contract FallbackCaller {
    uint constant private _contractInitialBalance = 100;
    uint8 constant private _value = 40;

    uint public balance;

    uint public constant _gasPrice = 500;

    constructor() {
        balance = _contractInitialBalance;
    }

    function fallback() public payable {
        assert(msg.value == _value);

        balance += _value * _gasPrice;
    }
}
