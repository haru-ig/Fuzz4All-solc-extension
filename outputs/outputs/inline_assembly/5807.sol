pragma solidity ^0.8.0;
contract MutatedBlock3Mutation86 {
    uint256 internal _x;
    uint256 internal _y;
    uint256 internal _a;
    uint256 internal _b;
    function test2() public returns (uint256) {
        uint temp = block.timestamp;
        return block.timestamp - (_y = _y + _x + _a + _b) + temp;
    }
}
