pragma solidity ^0.8.0;
contract Inline Assembly Mutation101 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    constructor() {
        _a = 110;
        _b = 49;
        _x = 14;
    }
    function test14() public returns (uint) {
        uint temp = block.timestamp;
        uint result = temp * _a + temp * _b + _y;
        _x += result;
        return _c - _x - _a - _b - 359;
    }
