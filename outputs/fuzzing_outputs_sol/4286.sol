pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCaller {
    uint x;
    fallback() payable external {
        x = 10;
    }
}
