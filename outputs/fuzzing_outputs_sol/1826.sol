pragma solidity ^0.8.0;
 contract FallbackCaller {
    uint constant private _contractInitialBalance = 100;
    uint private _gasPrice;
    uint public balance;
    uint public constant _value = 40;
    constructor(uint8 newGasPrice_) {
        _gasPrice = newGasPrice_;
        balance = _contractInitialBalance;
    }

    function fallback() public payable {

      value();
    }

    function value() public pure {
        assert(msg.value >= _value);
        balance += msg.value;
    }
}
