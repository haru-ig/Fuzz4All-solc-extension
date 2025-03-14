pragma solidity ^0.8.0;
contract MutatedBlock3Mutation88 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    function test4() public returns (uint) {
        uint temp = block.timestamp;
        _x += _y;
        _a += _b;
        return block.timestamp - (_y = _x + _a + _b) + temp;
    }
}
