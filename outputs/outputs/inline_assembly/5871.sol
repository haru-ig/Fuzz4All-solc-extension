pragma solidity ^0.8.0;

contract MutatedBlock5Mutation1 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    constructor() {
        _a = 1;
        _b = 99;
        _x = 14;
    }
    function test() public returns (uint) {
        while(true) {
            uint temp = block.timestamp;
            _y += _a + _b;
            _x += _y + _a;
            _c = block.number;
            _x +=
