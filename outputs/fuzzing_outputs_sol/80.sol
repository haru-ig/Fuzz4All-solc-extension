pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionTwo {
    function setData(uint k, uint256 y) public {}
    uint256 x;
    receive() external payable {   x = 1; }
    fallback() external payable
    {
        x = 1;
    }
}
