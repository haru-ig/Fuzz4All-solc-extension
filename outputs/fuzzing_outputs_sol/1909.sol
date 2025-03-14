pragma solidity ^0.8.0;
contract MutatingWithFallback {
    uint256 private constant _value = 11;
    uint256 private _balance = _value;
    uint256 private _gasPrice;
    constructor() {
        _gasPrice = 4566;
    }
    receive() external payable {}
    fallback () external {
        _balance += (uint256) _gasPrice;
    }
    function fallback() public payable {
        emit TokenPaid();
    }
    event TokenPaid();
}
