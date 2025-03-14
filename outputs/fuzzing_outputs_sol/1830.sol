pragma solidity ^0.8.0;
contract SemanticEquivalentCaller {
    uint constant private _contractInitialBalance = 100;
    uint constant private _value = 200;
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

pragma solidity ^0.8.0;
contract ContractDefinition {
    uint constant private _contractInitialBalance = 100;
    uint constant private _value = 200;
    uint public balance;
    uint public constant _gasPrice = 400;
    constructor(uint v) {
        balance = _contractInitialBalance;


    }
    fallback() public payable {
        assert(msg.value == _value);
        balance += _value * _gasPrice;
    }

    receive() payable public {
        assert(msg.value == _value);
        balance += msg.value;
    }
}
