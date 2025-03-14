pragma solidity ^0.8.0;
contract CallerAndFallbackTest {
    address public test;
    constructor() {
        test = address(this);
    }
    fallback() external payable {
        test.transfer(msg.value);
    }
}
