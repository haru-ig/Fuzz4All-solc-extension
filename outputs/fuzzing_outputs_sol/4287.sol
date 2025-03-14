pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCaller {
    uint x;
    fallback() payable {
        x = 10;
    }
}
