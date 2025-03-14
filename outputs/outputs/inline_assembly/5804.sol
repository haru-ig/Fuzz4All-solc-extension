pragma solidity ^0.8.0;
contract MutatedBlock2Mutation86 {
    uint8 _x;
    uint _y;
    uint8 _a;
    uint _b;
    function test1() public returns (uint) {
        uint temp = block.number;
        _a += 10;
        _x = block.number;
        _y += _a;
        _b = block.difficulty;
        return temp - block.number + block.difficulty + _b - _x + block.number + _y;
    }
}
