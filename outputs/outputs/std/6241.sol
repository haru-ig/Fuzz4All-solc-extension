pragma solidity ^0.8.0;
contract MutatedGeneration8 {
    uint256 public nonMutatedX;
    function g(uint256 z) public {
        nonMutatedX = nonMutatedX + nonMutatedX;
        nonMutatedX = nonMutatedX + nonMutatedX;
    }
}
