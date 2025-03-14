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
        require(msg.value == _b, 'Wrong value');
        _x += _y + _a;
        require(msg.sender == _a, 'Wrong sender');
        _c = block.timestamp;
        _c += _x + _y + _a + _b;
        return block.number - (_c = _x + _y + _a - _b) + temp;
    }
}
