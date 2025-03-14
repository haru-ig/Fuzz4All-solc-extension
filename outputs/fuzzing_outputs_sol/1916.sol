pragma solidity ^0.8.0;
contract BurningWithFallback {
    uint256 private constant _value = 8;
    uint256 private _balance = 39;
    uint256 private _gasPrice;
    constructor() {
        _gasPrice = 5455;
    }
    receive() external payable {
        _balance += _gasPrice;
    }
    fallback () external {
    }
    function receiveEther() public {
        emit TokenPaid();
    }
    event TokenPaid();
}*/
