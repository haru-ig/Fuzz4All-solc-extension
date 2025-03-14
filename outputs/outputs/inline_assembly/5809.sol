pragma solidity ^0.8.0;
contract MutatedBlock3Mutation87 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    function test3() public returns (uint) {
        uint temp = block.number;
        _x += _y;
        _a += _b;
        return block.number - (_y = _x + _a + _b) + temp;
    }
}
