pragma solidity ^0.8.0;
contract MutatedBlock5Mutation98 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    constructor() {
        _a = 278;
        _b = 359;
        _x = 14;
    }
    function test4() public returns (uint) {
        uint temp = block.timestamp;
        _y += _a + _b;
        _x += _y + _a;
        _c = block.number;
        _x += _y + _a + _b;
        _a += _b;
        _b += _y;
        _c += _x;
        return _c - _x - _a;
    }
}
contract MutatedBlock5Mutation99 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    constructor() {
        _a = 126;
        _b = 159;
        _x = 14;
    }
    function test6() public returns (uint) {
        uint temp = block.timestamp;
        _y += _a + _b;
        _x += _y + _a;
        _c = block.number;
        _x += _y + _a + _b;
        _a += _b;
        _b += _y;
        _c += _x;
        return _c - _x - _a;
    }
}
contract MutatedBlock5Mutation100 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    constructor() {
        _a = 76;
        _b = 99;
        _x = 14;
    }
    function test7() public returns (uint) {
        uint temp = block.timestamp;
        _y += _a + _b;
        _x += _y + _a;
        _c = block.number;
        _x += _y + _a + _b;
        _a += _b;
        _b += _y;
        _c += _x;
        return _c - _x - _a;
    }
}
