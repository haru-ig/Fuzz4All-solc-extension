pragma solidity ^0.8.0;
contract ContractWithFallback {
    uint256 private value;
    constructor () public {
    }
    fallback () external payable {
    }
    function withValueFallBack() public payable {
        value += this.balance;
        emit Fallback(this.balance);
    }
}
