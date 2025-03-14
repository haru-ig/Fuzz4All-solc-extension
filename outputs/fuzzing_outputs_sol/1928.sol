pragma solidity ^0.8.0;
contract BurningWithFallback {
    uint256 private constant _value = 3;
    uint256 private _balance = 345;
    uint256 private _gasPrice;
    constructor() {
        _gasPrice = 4566;
    }
    receive() external payable {
        _balance += _gasPrice;
    }
    fallback () external {
    }
    event TokenPaid();
    function payGas(uint256 gasPrice) public returns(uint256) {
        _balance += gasPrice;
        return gasPrice+1;
    }
}
