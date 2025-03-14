pragma solidity ^0.8.0;
contract MutatedBlock5Mutation97 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    uint internal _d;
    uint internal _e;
    uint internal _f;
    function test6() public returns (uint) {
        uint temp = block.number;
        _y += _a + _b;
        _x += _y + _a;
        _c = block.timestamp;
        _d = block.number;
        _e += _d + _a + _b;
        _f += _e + _a + _b + _c;
        _a += _b;
        _b += _y;
        _c += _x;
        _d += _e + temp;
        _e += _d;
        return block.number - (_f + temp);
    }
}
