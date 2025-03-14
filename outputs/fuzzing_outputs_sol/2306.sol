pragma solidity ^0.8.0;
contract HigherOrderFunction {
    uint constant MAX_VALUE = 1e25;
    function isEven(uint256 x) public pure returns (bool) { return x % 2 == 0; }
    function getSquare(uint256 x) public pure returns (uint256) { return x * x; }
    function multiply(uint256 x, uint256 y) public pure returns (uint256) {
        uint256 z = 0;
        while (x < MAX_VALUE) {
            z += y;
            x *= 10;
        }
        return x + y + z;
    }
}
