pragma solidity ^0.8.0;
contract MutatedBlock5Mutation93 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    function test5() public returns (uint) {
        uint temp = block.number;
        _y += _a + _b;
        _x += _y + _a;
        return block.number - (_b = _x + _y - _a) + temp;
    }
}
