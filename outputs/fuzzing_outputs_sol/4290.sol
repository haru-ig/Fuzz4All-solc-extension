pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCallerCopy {
    uint x;
    bytes17 xCopy;
    fallback() payable external {
        xCopy = 10;
    }
}
