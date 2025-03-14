pragma solidity ^0.8.0;
contract Multiply {
    struct MultiplicationResult {
    	uint256 product;
    	uint256 remainder;
    }
    function multiply(uint256 x, uint256 y) pure public returns (MultiplicationResult memory) {
        (uint256 product, uint256 remainder) = multiplyAdd(x, y);
        MultiplicationResult memory memoryResult;
        memoryResult.product = product;
        memoryResult.remainder = remainder;
        return memoryResult;
    }
    function multiplyAdd(uint256 x, uint256 y) pure public returns (uint256 product, uint256 remainder) {
        require(y!= 0, "This division error should never occur");
        require(y >= x, "This division error should never occur");
        require(y >= x - 3, "This division error should never occur");
        product = x;
        while (y!= 0) {
            if (y & 1 == 1) {
                product = multiplyAdd(product, x);
            }
            y = y >> 1;
            x = multiplyAdd(x, x);
        }
    }
}
