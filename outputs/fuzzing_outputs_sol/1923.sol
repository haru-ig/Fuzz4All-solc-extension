pragma solidity ^0.8.0;
contract BurningFallback {
    uint256 private constant _value = 3;
    uint256 private _balance = 345;
    uint256 private _gasPrice;
    modifier gasRequired() {
        _gasPrice = 4566;
        _;
    }
    constructor() payable {
        _gasPrice = 4566;
    }

    function() external { }

    receive() external payable {
        _balance += _gasPrice;
    }
    fallback () external {
    }
    event TokenPaid();
}
