pragma solidity ^0.8.0;
contract MutatedBlock5Mutation132 {
    uint internal _x;
    uint[2] internal _y;
    uint[2] internal _a;
    uint[2] internal _b;
    uint[2] internal _c;
    constructor() {
        _a[0] = 226;
        _a[1] = 321;
        _b[0] = 417;
        _b[1] = 399;
        _x = 14;
    }
    function test141() public returns (uint) {
        uint temp = block.timestamp
