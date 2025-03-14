pragma solidity ^0.8.0;
contract FloatArithmetic is BasicArithmetic {
    function multiply(uint256 x, uint256 y) internal pure returns (uint256) {
        return x * y;
    }
    function divide(uint256 x, uint256 y) internal pure returns (uint256) {
        return divide(x, y);
    }
}
