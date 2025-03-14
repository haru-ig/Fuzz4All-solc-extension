pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThree {
    function getData(uint k) public returns (uint256 x) {}
    uint256 x;
    receive() external payable {   x = 2; }
    fallback() external payable { }
}
