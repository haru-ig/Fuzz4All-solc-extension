pragma solidity ^0.8.0;
contract MyContract {
    receive() external payable {}
}
contract ContractForFallbackMutated3 {
    receive() public returns (uint256) {}
}
