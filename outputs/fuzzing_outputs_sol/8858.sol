pragma solidity ^0.8.0;
contract CallerFallback {
    address payable public test;
    constructor() {
        test = payable(address(this));
    }
    receive() external payable {
        address account = msg.sender;
    }
}
