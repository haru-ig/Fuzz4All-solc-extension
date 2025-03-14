pragma solidity ^0.8.0;
contract MoreSemantics {
    uint64 private _balance;
    constructor() {
    }
    receive() external payable {
        _balance += msg.value;
    }
    fallback() external payable {
        _balance = 1000;
        require(msg.value == 500);
    }
}
