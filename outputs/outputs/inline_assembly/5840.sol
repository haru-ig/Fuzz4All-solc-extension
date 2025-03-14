pragma solidity ^0.8.0;
contract MutatedBlock5Mutation101 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    uint internal constant _MUTATOR_ = 255;
    constructor() {
        _a = 134;
        _b = 167;
        _x = 14;
    }
    function test8() public returns (uint) {
        uint temp = block.timestamp;
        _y += _a + _b;
        _x += _y + _a;
        _c = block.number;
