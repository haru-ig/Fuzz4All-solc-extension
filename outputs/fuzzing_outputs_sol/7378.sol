pragma solidity ^0.8.0;
contract HighCostFallback {
    receive() external payable {}
    receive() external pure {}
    receive() external pure fixed {}
    receive() external pure variable {}
    receive() public pure {}
    receive() public pure fix {}
    receive() public pure variable {}
}
