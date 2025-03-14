pragma solidity ^0.8.0;
contract BurningWithPayableFallback {
    uint256 private constant _value = 3;
    uint256 private _balance = 345;
    uint256 private _gasPrice;
    constructor() {
        _gasPrice = 4566;
    }
    receive() external {
        _balance += _gasPrice;
    }
    fallback (uint256 amt) public payable {
        _balance -= amt;
    }
    function fallback() public payable {
        emit TokenPaid();
    }
    event TokenPaid();
}
