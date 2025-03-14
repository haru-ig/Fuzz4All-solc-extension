pragma solidity ^0.8.0;
contract MutatedBlock5Mutation22 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    uint internal _d;
    address internal _e;
    constructor() {
        _a = 124;
        _b = 157;
        _x = 31;
        _y = 50 + 9;
        _e = msg.sender;
    }
    function test8() public returns (uint) {
        uint temp = block.timestamp;
        _y += _a + _b;
        _x
