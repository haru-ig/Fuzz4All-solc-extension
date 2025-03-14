pragma solidity ^0.8.0;
library Arithmetic {
    function safeAdd(uint a, uint b) internal pure returns (uint) {
        return a + b;
    }
}
