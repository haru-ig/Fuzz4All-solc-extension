pragma solidity ^0.8.0;
contract MutatedBlock5Mutation98 {
    uint internal _x;
    uint internal _b;
    uint internal _a;
    uint internal _y;
    uint internal _z;
    uint internal _c;
    function test5() public returns (uint) {
        uint temp = block.timestamp;
        _y += _a + 2;
        _c = _a + 2;
        _b += (3 * ((_a + 2) - _b) - _z);
        _x = _b - (1 * _c) - 3 * (_z + block.number);
        _y += _x;
        _a += _x;
        return _a - _x;
    }
}
