pragma solidity ^0.8.0;
contract IncrementAndSubtract {
    enum Operation {PLUS, MINUS, MULTIPLY}
    struct IncrementResult {
    	uint256 sumIncrements;
    	uint256 sumDecrements;
    	uint256 difference;
    }
    function incrementAndSubtract(uint256 x, uint256 y, Operation myOperation) public pure returns (IncrementResult memory) {
    	IncrementResult memory memoryResult;
        uint256 operation;
        uint256 remainder;
        switch (myOperation) {
        case Operation.PLUS:
            operation = x + 1;
            remainder = y;
            memoryResult.difference = remainder * (2 ** 256);
            break;
        case Operation.MINUS:
            operation = x;
            remainder = x - y + 1;
            memoryResult.difference = (1 * 10**20) - remainder;
            break;
        case Operation.MULTIPLY:
            operation = x * 4;
            remainder = (x - (x / 4)) * x / 8;
            memoryResult.difference = x * (1 * 10**20);
            memoryResult.sumIncrements = x % 4 * ((x / 4) * (x / 4) + 1) * 4;
            memoryResult.sumDecrements = ((x
            break;

        }
        memoryResult.remainder = remainder;
        if (remainder < 1) {
        if (remainder >= operation) {
            memoryResult.sumDecrements = operation - remainder + 1;
            memoryResult.sumIncrements = (x - (x / 4)) * x / 8;
        } else  {
            memoryResult.sumIncrements = operation - remainder + 1;
            memoryResult.sumDecrements = x - (((x % 4) * 2 + 1) * x / 4);
            x = operation;
        }
        }
        else {
        if (remainder >= operation) {
            memoryResult.sumDecrements = remainder - operation + 1;
        } else  {
            memoryResult.sumIncrements = operation - remainder + 1;
            memoryResult.sumDecrements = x - (((((x % 4) * 2 + 1) * (x / 4)) / 3) * x / 4);
        }
        }
        return memoryResult;
    }
}
