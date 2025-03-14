pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback1 {
    mapping(address => bool) notSawFallback;
    constructor() {}
    fallback() external payable {
        notSawFallback[msg.sender] = true;
    }
    function execute() external {
        if (!notSawFallback[msg.sender]) {
            selfdestruct(msg.sender);
        }
    }
}
