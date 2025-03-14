pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCaller2 {
    uint x;
    fallback() external payable {
        x = 10;
    }
}
