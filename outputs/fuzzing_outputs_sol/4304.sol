pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCaller {
    uint internal x = 10;
    receive() external payable {
        x += 1;
    }
}
