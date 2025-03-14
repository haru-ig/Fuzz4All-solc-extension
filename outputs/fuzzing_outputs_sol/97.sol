pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThree {
    uint x;
    receive() external payable {   x = 2; }
    fallback() external payable { }
}
