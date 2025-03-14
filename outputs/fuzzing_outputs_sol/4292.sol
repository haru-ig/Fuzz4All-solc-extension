pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCallerCopy {
    uint x;
    fallback() payable external override {
        x = 10;
    }
}
