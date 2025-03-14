pragma solidity ^0.8.0;
contract MutatingFallback is Fallback {
    receive() external override payable {
        revert();
    }
}
