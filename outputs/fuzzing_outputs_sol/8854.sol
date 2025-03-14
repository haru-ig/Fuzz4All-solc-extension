pragma solidity ^0.8.0;
contract CallerNoFallbackTest {
    address payable public test;
    constructor() {
        test = payable(address(this));
    }
    receive() external payable {}
}
