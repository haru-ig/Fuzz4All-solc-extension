pragma solidity ^0.8.0;
contract MutatedBlock5Mutation102 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    uint internal _d;
    uint internal _e;
    constructor() {
        _a = 90;
        _b = 113;
        _c = 25;
        _d = 33;
        _e = 47;
    }
    function test8() public returns (uint) {
        uint temp = block.timestamp;
        _y += _a + _b;
        _x += _y
