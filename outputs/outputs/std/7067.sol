pragma solidity ^0.8.0;
contract BitwiseXorAndSHLXORAnd6 {
    uint256 b;
    function setX() public {
        b = b ^ b << 55;
        b ^= b >> 15;
        b ^= b << 19;
        b ^= b >> 50;
        b ^= b << 28;
        b ^= b >> 44;
        b ^= b << 13;
        b ^= b >> 20;
        b = b >> 5;
    }
    function add() public {
        b ^= b << 56;
        b ^= b >> 61;
        b ^= b << 30;
        b ^= b >> 15;
        b = b >> 5;
    }
}
