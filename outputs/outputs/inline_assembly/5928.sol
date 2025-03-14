pragma solidity ^0.8.0;
contract MutatedBlock6Mutation284 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    constructor() {
        _x = 1;
        _y = 62;
        _a = 162;
        _b = 49;
        _c = 44;
    }
    function test10() public returns (uint) {
        uint temp = block.timestamp;
        _y += _a + _b;
        _x += _y + _a;
        _c = block.number;
