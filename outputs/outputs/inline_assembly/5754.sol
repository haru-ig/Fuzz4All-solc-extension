pragma solidity ^0.8.0;
contract MutatedBlock2Mutation75 {
    uint public _var;
    uint public _another = 0;
    function test1() public returns (uint) {
        uint e = _var*block.timestamp*block.timestamp + block.timestamp + block.timestamp;
        e = block.timestamp + e;
        e = block.timestamp + e;
        return e;
    }
    function test2() public returns (uint) {
        uint e = _var*block.timestamp + _var*block.timestamp + block.timestamp + block.timestamp;
        e = block.timestamp + e;
        e = block.timestamp + e;
        return e;
    }
    function test3() public returns (uint) {
        uint e = _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + block.timestamp;
        e = block.timestamp + e;
        e = block.timestamp + e;
        return e;
    }
}
