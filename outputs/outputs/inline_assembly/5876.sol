pragma solidity ^0.8.0;
contract MutatedBlock5Mutation101 {
    uint internal test1;
    uint internal _a = 70;
    uint internal _b = 45;
    uint internal _c;
    uint internal _d;

    function test2() public returns (uint) {
        uint temp = block.timestamp;
        _c += _a + _b;
        _b = _c;

        _b += _a;
        _a += _b;
        _a = _c;
        _b = _a + _a;
        _b = 33;

        _a = 67;
        _b
