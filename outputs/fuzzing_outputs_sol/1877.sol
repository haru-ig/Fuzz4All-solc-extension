pragma solidity ^0.8.0;
contract SameSemanticEquivalentTo {
    uint constant _value = 2;
    uint _balance = 0;
    uint private _gasPrice;
    constructor() {
        _balance = 0;
        _gasPrice = 500;
    }
    receive() {}
    fallback() external payable {
        _balance = 1000;
        require(msg.value == _value);
    }
}
