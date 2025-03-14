pragma solidity ^0.8.0;
contract MutatedBlock9Mutator5 {
    uint public _var = 1;
    function test() public returns(uint) {
        uint x;
        x = block.number;
        x = block.difficulty;
        x = block.timestamp;
        x = block.gaslimit;
        x = block.number;
        return x;
    }
}
