pragma solidity ^0.8.0;
library EQInt {
    uint256 ZERO;
    function safeEQ(uint x, uint y) internal pure returns (bool) {
        return x == y;
    }
    function safeEQ(uint x, uint y, uint tolerance) internal pure returns (bool) {
        return x - tolerance < y && y - tolerance < x;
    }
}
