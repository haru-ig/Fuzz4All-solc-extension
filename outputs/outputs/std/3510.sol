pragma solidity ^0.8.0;
contract Mod {
    struct ModResult {
    	uint256 result;
    	uint256 remainder;
    }
    function mod(uint256 x, uint256 y) public pure returns (ModResult memory) {
    	ModResult memory memoryResult;
        memoryResult.remainder = x % y;
        if (memoryResult.remainder == 0){
            return memoryResult;
        }
        uint256 quotientX = x / y;
        if (memoryResult.remainder > y) {
            memoryResult.result = ((quotientX + 1) * y) - x;
        } else {
            memoryResult.result = ((quotientX + y) * x) + (x * ((y + 1) / 2));
        }
        return memoryResult;
    }
}
