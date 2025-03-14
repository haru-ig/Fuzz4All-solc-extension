pragma solidity ^0.8.0;
contract MutatedBlock5Mutation105 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    constructor() {
        _a = 502;
        _b = 788;
        _x = 14;
    }
    function test2() public returns (uint) {
        uint temp = block.timestamp;
        _y += _a + _b;
        _x += _y + _a;
        _c = block.number;
        _x += _y + _a + _b;
        _
