pragma solidity ^0.8.0;

library Arithmetic {
    function safeAdd(uint a, uint b) internal pure returns (uint) {
        uint t = a + b;
        require(t >= a, 'overflow');
        return t;
    }

    function safeSub(uint a, uint b) internal pure returns (uint) {
        uint t = a - b;
        require(b <= a, 'underflow');
        return t;
    }

    function safeMul(uint a, uint b) internal pure returns (uint) {
        if (a == 0) return 0;
        uint c = a * b;
        require(c / a == b, 'overflow');
        return c;
    }

    function safeDiv(uint a, uint b) internal pure returns (uint) {
        uint c = a / b;
        return c;
    }
}
