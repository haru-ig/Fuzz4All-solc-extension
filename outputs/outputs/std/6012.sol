pragma solidity ^0.8.0;
library Arithmetic {

    function safeAdd(uint a, uint b) internal pure returns (uint) {
        uint c = a + b;
        require(c >= a);
        if (c < a) {
            return a;
        } else {
            return c;
        }
    }
}
