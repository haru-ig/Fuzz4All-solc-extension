pragma solidity ^0.8.0;
contract Multiply {
    struct MultiplicationResult {
    	uint256 product;
    	uint256 remainder;
    }
    function multiply(uint256 x, uint256 y) pure public returns (MultiplicationResult memory) {
    	MultiplicationResult memory memoryResult;
        memoryResult.product = x * y;
        memoryResult.remainder = x % y;
        return memoryResult;
    }
}
