pragma solidity ^0.8.0;
 contract FallbackCaller {
    uint constant private _contractInitialBalance = 100;
    uint public balance = _contractInitialBalance;
    uint public constant _gasPrice = 2000000;
    constructor() {
        balance = _contractInitialBalance;
    }
    function fallback() public payable {
        assert(msg.value == _value);
        balance += _value * _gasPrice;
        if (balance > 0){
        revert();
        }
    }
}
