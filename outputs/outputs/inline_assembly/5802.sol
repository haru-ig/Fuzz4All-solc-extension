pragma solidity ^0.8.0;
contract MutatedBlock3Mutation86 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    function test2() public returns (uint) {








        uint temp = block.number;
        return block.number - (_y = _y + _x + _a + _b) + temp;
    }
}
