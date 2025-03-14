pragma solidity ^0.8.0;
contract MutatedBlock5Mutation98 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    function test5() public returns (uint) {
        uint temp = block.timestamp;
        _y += _a + _b;
        _x += 1 - _y + 5;
        _c = 1 - block.number + 4;
        _x += block.number + _y + 6;
        _a += 2 - _b;
        _b += _y + 3;
        _c += 7 + _a;
        return _c + _x + 11 - _b;
    }
}


pragma solidity ^0.8.0;
contract MutatedBlock5Mutation99 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    function test5() public returns (uint) {
        uint temp = block.timestamp;
        _y += _a + _b;
        _x += _a + _y + _x;
        _c = block.timestamp - _y - _x;
        _x += 17 + _a - _y + _b;
        _a += _b;
        _b += _y;
        _c += 1 - block.timestamp + _x - _a;
        return _c + 15 + _a;

    }
}
