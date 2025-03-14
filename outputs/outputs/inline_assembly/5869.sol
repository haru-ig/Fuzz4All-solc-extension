pragma solidity ^0.8.0;
contract MutatedBlock5Mutation101 {
    bytes32 internal _x;
    bytes32 internal _y;
    bytes32 internal _a;
    bytes32 internal _b;
    bytes32 internal _c;
    bytes32 internal _d;
    constructor() {
        _a = _sha256("hello");
        _b = bytes32(10);
        _x = bytes32(26);
    }
    function test8() public returns (uint) {
        uint temp = block.timestamp;
        _y += _a + _b;
        _x += _y +
