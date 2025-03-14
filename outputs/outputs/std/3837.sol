pragma solidity ^0.8.0;
contract Overflow is BasicArithmetic {
    function divideByZero(uint256 x) public pure returns (uint256) {
        require(x > 0);
        return divide(x + 1, 0);
    }
    function maxSafe(uint256 x, uint256 y) public pure returns (uint256) {
        require(multiply(x, y) < y);
        return x;
    }
    function sumSafe(uint256[] memory array) public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < array.length; i++) {
            sum = mul(array[i], sum) + sum;
        }
        return sum;
    }
}
