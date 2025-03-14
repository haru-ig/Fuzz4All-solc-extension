pragma solidity ^0.8.0;
contract MutatedBlock2Mutation81 {
    function test5() public returns (uint) {
        uint x=uint(keccak256(abi.encode(block.difficulty)));
        x = x + uint(keccak256(abi.encode(block.number)));
        return x;
    }
}
