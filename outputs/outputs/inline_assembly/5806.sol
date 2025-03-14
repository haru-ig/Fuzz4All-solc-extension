pragma solidity ^0.8.0;
contract MutatedBlock3Mutation87 {
    uint internal _x = 100;
    uint public _y;
    uint external _z;
    uint internal _a;
    uint internal _b;

    function test2() public returns (uint) {
        uint tmp = block.number;
        return block.number - (_y, _z) + uint(false) + _a + uint(!_b) + _x + _y + _z + uint(11) + uint(_x) + uint((_a + "0x"+keccak256('here'))) + uint((keccak256('here')) * _b) + uint((address(_x)) + block) + uint(((uint(true) + uint((42, 1))) + uint(true)) + _y + tmp);
    }
}
