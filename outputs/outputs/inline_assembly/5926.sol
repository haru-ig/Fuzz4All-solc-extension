pragma solidity ^0.8.0;
contract MutatedBlock2Mutation3 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    constructor() {
        _a = 310;
        _b = 370;
        _x = 21;
    }
    function test1() public returns (uint) {
        uint temp = block.timestamp;
        _y += _a + _b;
        _x += _y + _a;
        _c = block.number;
        _x += _y + _a + _b;
        _a +=
