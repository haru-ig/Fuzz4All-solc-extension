pragma solidity ^0.8.0;
contract CallerFallbackTest {
    address payable public test;
    constructor() {
        test = payable(msg.sender);
    }
    receive() payable {}
}
