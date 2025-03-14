pragma solidity ^0.8.0;
contract MutatedBlock2Mutation85 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    function test2() public returns (uint) {
        uint temp = block.number;
        _a += 10;
        _b = block.number * block.difficulty;
        _y += _x;
        _x = block.number & 1;
        return temp - _y + _a + _b;
    }
}
