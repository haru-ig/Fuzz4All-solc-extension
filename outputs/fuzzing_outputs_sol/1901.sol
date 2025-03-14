pragma solidity ^0.8.0;
contract MutableContract {
    uint256 public _balance = 4566;
    constructor() {}
    function incrementBalance() public pure {
        _balance += 1;
    }
    function multiplyBalance(uint256 a) public pure {
        _balance = _balance * a;
    }
    function subtractBalance() public pure {
        _balance--;
    }
}
