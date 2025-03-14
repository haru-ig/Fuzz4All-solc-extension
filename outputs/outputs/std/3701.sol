pragma solidity ^0.8.0;
contract MutatedMath {
    uint256 public value;
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}
