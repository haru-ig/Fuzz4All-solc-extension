pragma solidity ^0.8.0;
contract Caller {
    payable public payableFallbackFunction;
    constructor() {
        address payable _payableAddress = payable(address(this));
        payableFallbackFunction = address(this);
    }
    receive() external payable { }
}
