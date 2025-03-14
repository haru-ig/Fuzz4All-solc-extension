pragma solidity ^0.8.0;
contract MutatedFallback {
    fallback (uint x) payable external {
        storage.x = x;
    }
    uint storage.data;
}
