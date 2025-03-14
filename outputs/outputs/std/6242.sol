pragma solidity ^0.8.0;
contract MutatedGeneration8 {
    uint256 public nonMutatedX;
    function g(uint256 x, uint256 y) public {
        nonMutatedX = nonMutatedX + nonMutatedX*x;
        nonMutatedX = nonMutatedX + nonMutatedX*y;
    }
}
