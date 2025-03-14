pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCallerNoModifier2 {
    uint internal x;
    receive() external {x = 12;}
}
