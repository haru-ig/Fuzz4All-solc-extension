pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Multiply {
    struct MultiplicationResult {
        uint256[10] memory product;
        uint256[10] memory remainder;
    }
    function multiply(uint256 x, uint256 y) public pure returns (MultiplicationResult memory) {
        MultiplicationResult memory memoryResult;
        memoryResult.product[0] = x;
        uint256 product = x * y;
        uint256 quotient = product / 10**18;
        product -= quotient * 10**18;
        uint256 remainder = product % 10;
        memoryResult.remainder[0] = remainder;
        for (uint8 i = 1; i < 10; ++i)
        {
            memoryResult.product[i] = product / Math.pow(10, i);
            product /= 10;
        }
        return memoryResult;
    }
}
