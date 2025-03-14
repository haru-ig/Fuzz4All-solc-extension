pragma solidity ^0.8.0;
contract Arithmetic {
    function mul(uint a, uint b) public pure returns(uint256 res) {
        if (a == 0) {
            return(0);
        }
        return(a * b);
    }
    function div(uint a, uint b) public pure returns(uint256 res) {
        if (b == 0) {
            return(0);
        }
        return(a / b);
    }
    function sub(uint a, uint b) public pure returns(uint256 res) {
        if (b == 0) {
            return(0);
        }
        return(a - b);
    }
    function add(uint a, uint b) public pure returns(uint256 res) {
        if (a >= 0) {
            return(a + b);
        }
        return(a - b + 2**uint256(256) + 1);
    }
    function minus(uint a) public pure returns(uint256 res) {
        if (a >= 0) {
            return(a - 1);
        }
        uint256 neg = (a << 1) ^ -(a >> (uint8(255) - 1));
        if (a == uint256(255)) {
            res = neg >> 1;
        } else {
            res = ~neg + (a >> (uint8(255) - 1));
        }
    }
