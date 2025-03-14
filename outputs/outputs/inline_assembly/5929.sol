pragma solidity ^0.8.0;
contract MutatedBlock5Mutation101 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    uint internal value;
    constructor() {}
    function test() public {
        uint temp = block.timestamp;
        _y += _a + _b;
        _x += _y + _a;
        _c = block.number;
        while (true) {
            _x += _y + _a + _b;
            _a += _b;
            _b += _y;
            _c += _x;
            value +=
