pragma solidity ^0.8.0;
library Arithmetic {
    function safeAdd(uint a, uint b) internal pure returns (uint) {
        uint t = a + b;
        require(t >= a, 'overflow');

        return t;
    }
}
