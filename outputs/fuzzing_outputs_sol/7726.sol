pragma solidity ^0.8.0;
contract SemanticFallback {
    uint256 public value;
    fallback() external {
        value++;
    }

    receive() external payable {
        value += msg.value;
    }
}
