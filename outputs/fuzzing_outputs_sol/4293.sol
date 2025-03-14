pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCaller {
    uint internal x;
    receive() external payable {
        x = 10;
    }
}
