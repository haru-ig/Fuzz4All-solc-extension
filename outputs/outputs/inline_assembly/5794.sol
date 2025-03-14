pragma solidity ^0.8.0;
contract MutatedBlock2Mutation84 {
    uint internal _var;
    function test1() public returns (uint) {
        _var++;
        return _var - block.number + 1;
    }
}
