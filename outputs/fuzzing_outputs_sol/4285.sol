pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCaller3 {
    uint x;
    fallback() external payable {
        x += 5;
    }
}
