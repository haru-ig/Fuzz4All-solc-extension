pragma solidity ^0.8.0;
contract MutatedBlock5Mutation94 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    function test7() public returns (uint) {
        uint temp = block.timestamp;
        uint _d = _x + _y + _a + _b + _c;
        _y += _x + _a - _b;
        _c = _y + _a - _b;
        _y += _a - _b;
        _x = _c - _y + _a + _y + _c + temp;
        _b = block.timestamp + _d;
        _y = _d - _b - _y;
        _a--;
        _b += _d;
        return block.timestamp - _a - _b + temp;
    }
}
