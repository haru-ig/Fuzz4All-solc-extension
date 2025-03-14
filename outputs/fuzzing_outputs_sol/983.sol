pragma solidity ^0.8.0;
contract ReceiveAndFallbackMutated {
    receiver fallback() external payable {}
}
