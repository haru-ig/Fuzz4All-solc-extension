pragma solidity ^0.8.0;
contract BitwiseXXANDYXXAnd5 {
    uint256 a;
    function setX() public {
        a = a << 16;
        a ^= a << 8;
        a ^= a >> 3;
        a ^= a << 11;
    }
    function add() public {
        a <<= 4;
        a ^= a >> 13;
        a ^= a << 17;
        a ^= a >> 31;
        a <<= 24;
        a ^= a >> 47;
        a ^= a << 32;
        a ^= a >> 9;
        a <<= 19;
        a ^= a >> 64;
    }
}
