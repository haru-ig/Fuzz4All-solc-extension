pragma solidity ^0.8.0;
contract MutatedMutatedMutated {
    uint256 private test = 6;
    function myInit(uint256 a, uint256 b) private {
        test = a + (b * test) - (a * b) + 1;
    }
}
