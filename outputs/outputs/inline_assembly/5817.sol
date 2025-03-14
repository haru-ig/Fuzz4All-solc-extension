pragma solidity ^0.8.0;
contract MutatedBlock5Mutation95 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    function test5() public returns (uint) {
        uint temp = block.number;
        _y += _a + _b;
        _x += _y + _a;
        _c = block.timestamp;
        _c += _x + _y + _a + _b;
        return block.number - (_c = _x + _y + _a - _b) + temp;
    }
}
