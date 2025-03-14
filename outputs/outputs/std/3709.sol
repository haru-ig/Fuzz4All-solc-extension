pragma solidity ^0.8.0;
contract MutatedMath2 {
    uint256 public value;
    function add(uint256 a, uint256 b) public pure returns (uint256) {
    	value = (a & b) + (a >> b);
        return a + b;
    }
}
