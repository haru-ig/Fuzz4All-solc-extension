pragma solidity ^0.8.0;
contract Subtract {
    struct SubtractionResult {
    	uint256 difference;
    	uint256 remainder;
    }
    function subtract(uint256 x, uint256 y) public pure returns (SubtractionResult memory) {
    	SubtractionResult memory memoryResult;
        memoryResult.difference = x - y;
        memoryResult.remainder = x % y;
        return memoryResult;
    }
}
