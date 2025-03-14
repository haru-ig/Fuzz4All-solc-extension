pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionMutated{
    uint256 x;
    receive() external payable { x = 1; }
    fallback() external payable { x = 2; }
}
