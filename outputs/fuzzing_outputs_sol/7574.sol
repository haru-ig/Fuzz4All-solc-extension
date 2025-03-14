pragma solidity ^0.8.0;
contract MutedFallback
{
    receive() external payable returns (uint256) {}
    function fallback() public payable returns (uint256 x) {
    }
}
