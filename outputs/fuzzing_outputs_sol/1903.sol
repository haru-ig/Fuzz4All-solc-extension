pragma solidity ^0.8.0;
contract MutatingFallback {
    uint256 private _value = 3;
    uint256 private _balance;
    uint256 private _gasPrice;
    constructor() {
        _gasPrice = 4566;
    }
    receive() external payable {}
    fallback () external {
        _balance += _gasPrice;
    }
    function fallback() public payable {
        _value = uint256(keccak256(abi.encodePacked("this is mutated")));
    }
    function fallback() public payable {
        emit TokenPaid();
    }
    event TokenPaid();
}
