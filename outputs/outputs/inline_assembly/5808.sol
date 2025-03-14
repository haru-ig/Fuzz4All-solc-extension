pragma solidity ^0.8.0;
contract EvmMutatedBlock3Mutation86 {
    uint x;
    uint y;
    uint a;
    uint b;
    function test3(uint arg) public returns (uint) {
        uint temp = block.number;
        return block.number - (y = y + x + a + b) + temp;
    }
} */
