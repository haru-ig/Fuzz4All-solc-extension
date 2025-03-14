pragma solidity ^0.8.0;
contract MutatedBlock5Mutation96 {
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
        _x += _y + _a + _b;
        _a += _b;
        _b += _y;
        _c += _x;
        return block.number - (_c + temp);
    }
}
