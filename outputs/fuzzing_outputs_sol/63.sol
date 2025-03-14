pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionMutants {
    uint256 x;
    receive() external payable { x = 1; }
    fallback() external payable { x = 1; }
    uint256 value;
    constructor() {
        value = 1;
    }
    function callAndFallback() payable {
        value = 2;
    }
}
