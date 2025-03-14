pragma solidity ^0.8.0;
contract MutatedBlock2Mutation803 {
    uint public _var;
    uint public _another = 0;
    uint _last;
    function test1() public returns (uint) {
        _var = block.timestamp*block.timestamp + _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + block.timestamp;

        _var = _var*block.timestamp*block.timestamp + _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + _var*block.
