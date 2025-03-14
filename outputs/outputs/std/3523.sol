pragma solidity ^0.8.0;
contract Multiply {
    struct MultiplicationResult {
    	uint256 product;
    	bool error;
    }
    function multiply(uint256 x, uint256 y) pure public returns (MultiplicationResult memory) {
        MultiplicationResult memory memoryResult;
        bool error = false;
        memoryResult.product = x * y;
        if (x == 0){
            memoryResult.error = true;
        }
        else if (y == 0){
            memoryResult.error = true;
        }
        else{
            memoryResult.remainder = x % y;
        }
        return memoryResult;
    }
}
