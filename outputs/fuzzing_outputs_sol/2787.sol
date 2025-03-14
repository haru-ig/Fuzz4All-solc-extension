pragma solidity ^0.8.0;
contract Mutator {
    address payable _addr;
    uint256 public _amount;
    constructor() {}
    modifier sendAmount() {
        require(_amount > 0);
        _addr.transfer(_amount);
        _amount = 0;
        _;
    }
    receive () external payable {
    }
}
