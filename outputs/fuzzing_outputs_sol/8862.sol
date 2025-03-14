pragma solidity ^0.8.0;
contract CallerAndFallbackTest {
    address public test;
    event EthEvent();
    constructor() {
        (bool success,) = test.call{value:10 ether}("");
        require(success);
        EthEvent();
    }
    fallback() external payable {
    }
}
