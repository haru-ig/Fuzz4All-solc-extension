pragma solidity ^0.8.0;
contract MutatedFallbackCaller {
    uint internal x = 1;
    receive() external calldata {
        x = 2;
    }
}
