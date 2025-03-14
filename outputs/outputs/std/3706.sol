pragma solidity ^0.8.0;
contract MutatedMutations {
    uint256 public value;
    function subtract(uint256 a, uint256 b) public pure returns (uint256) {
        return a - b;
    }
    function multiply(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }
    function div(uint256 b, uint256 a) public pure returns (uint256) {
        return b + a* uint256(-1);
    }
}
