pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCallerNotModified {
    uint internal x = 10;
    receive() external payable {}
    receive() external payable {
        x = 12;
    }
}
