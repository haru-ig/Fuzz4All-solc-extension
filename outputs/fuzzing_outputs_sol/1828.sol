pragma solidity ^0.8.0;
 contract MutatedCaller {
    uint constant private _contractInitialBalance = 100;
    constructor() {
        balance = _contractInitialBalance;
    }
    function _setBalance(uint _newBalance) internal {
        balance = _newBalance;
    }
    function fallback() public payable {
        assert(msg.value == _value);
        _setBalance(_newBalance);
    }
}

pragma solidity ^0.8.0;
 contract MutatedCaller2 {
    uint8 constant private _value = 40;
    uint public balance;
    constructor() {
        balance = _contractInitialBalance;
    }
    function fallback() public payable {
        assert(msg.value == _value);
       balance += _value * _gasPrice;
    }
}
