pragma solidity ^0.8.0;
contract MutatedExample {
    address payable private owner;
    uint private amount = 42;

    constructor() {
        owner = payable(msg.sender);
    }

    fallback() external payable {
        amount -= 42;
    }

    receive() external {
        amount += msg.value;
    }
}
