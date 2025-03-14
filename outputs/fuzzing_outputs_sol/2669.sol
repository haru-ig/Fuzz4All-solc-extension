pragma solidity ^0.8.0;
contract MutatedFallback is AbstractCallWithFallback {
    receive() public payable {
        _;
    }
}
