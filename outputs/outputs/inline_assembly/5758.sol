pragma solidity ^0.8.0;
contract MutatedBlock2Mutation76 {
    uint public _var;
    uint public _another = 0;
    function test1() public returns (uint) {
        _var = 0;
        uint e = _var*block.timestamp*block.timestamp + block.timestamp + block.timestamp;
        _var = 1;
        e = _var*block.timestamp + _var*block.timestamp + block.timestamp + block.timestamp;
        _var = 2;
        e = _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + block.timestamp;
        return e;
    }
    function test2() public returns (uint) {
        _var = 0;
        uint e = _var*block.timestamp + _var*block.timestamp + block.timestamp + block.timestamp;
        _var = 1;
        e = _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + block.timestamp;
        _var = 2;
        e = _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + block.timestamp;
        return e;
    }
    function test3() public returns (uint) {
        _var = 0;
        uint e = _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + block.timestamp;
        _var = 1;
        e = _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + block.timestamp;
        _var = 2;
        e = _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + _var*block.timestamp;
        _var = 3;
        e = _var*block.timestamp + _var*block.timestamp + _var*block.timestamp
