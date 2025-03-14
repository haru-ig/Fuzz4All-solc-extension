pragma solidity ^0.8.0;
contract MutatedBlock4Mutation97 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _c;
    function test4() public returns (uint) {
        uint temp = block.timestamp;
        uint _y;
        uint _x;
        assembly { _y := _x + _a + _b; _x := _y + _a + _b }
        return block.timestamp - (_c + _y + temp);
    }
}
