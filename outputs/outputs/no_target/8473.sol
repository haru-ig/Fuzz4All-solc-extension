pragma solidity ^0.8.0;
contract Mutated18 {
    function divideXbyY (
        uint256 x,
        uint256 y
    ) public pure returns (uint256 z) {
        return z = x / y;
    }
    function divideXbyY (
        uint256 x,
        uint256 y
    ) external pure returns (uint256 z) {
        return z = x / y;
    }
    function divideXbyY (
        uint256 x,
        uint256 y
    ) public pure {
        z = x / y;
    }
}
