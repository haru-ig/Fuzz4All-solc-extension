pragma solidity ^0.8.0;
contract MutatedBlock5Mutation33 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    function test5() public returns (uint) {
        uint temp = _x;
        _x += _y;
        _y += _b;
        _y = temp;
        _c = _x + _y;
        _c += _a;
        _c += _b;
        return _x + _y + _y + _c;
    }
}
