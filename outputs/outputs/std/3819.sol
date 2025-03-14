pragma solidity ^0.8.0;
contract BasicArithmetic {
    function multiply(uint256 x, uint256 y) internal pure returns (uint256) {
        return x * y;
    }

    function divide(uint256 x, uint256 y) internal pure returns (uint256) {
        return x / y;
    }

    function add(uint256 x, uint256 y) internal pure returns (uint256) {
        return multiply(x, y) + x;
    }

    function max(uint256 x, uint256 y) internal pure returns (uint256) {
        return multiply(x, y) >= multiply(y, x)? x : y;
    }

    function min(uint256 x, uint256 y) internal pure returns (uint256) {
        return multiply(x, y) >= multiply(y, x)? y : x;
    }
}
