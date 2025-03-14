pragma solidity ^0.8.0;
contract MutatedMutatedMutated is MutatedMutatedMutated {
    function myInit(uint256 a, uint256 b) public {
        test = a + (b * test) ^ (b * b);
    }
}
