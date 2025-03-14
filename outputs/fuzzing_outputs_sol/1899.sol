pragma solidity ^0.8.0;
contract MutatedBurningWithFallback {
    uint256 private _gasPrice;
    constructor() {
        _gasPrice = 4566;
    }
    receive() external payable {}
    fallback() external {
        _balance += _gasPrice;
    }
    function fallback() public payable {
        emit TokenPaid();
    }
    event TokenPaid();
}
