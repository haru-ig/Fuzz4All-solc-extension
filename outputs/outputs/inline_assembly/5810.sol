pragma solidity ^0.8.0;
contract MutatedBlock3Mutation100 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    function test4() public returns (uint) {
        uint temp = block.number;
        _y -= _x + _a + _b;
        _a += 100;
        _x++;
        return block.number - (_x = _b) + block.number + temp;
    }
}
