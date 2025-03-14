pragma solidity ^0.8.0;
contract MutatedBlock2Mutation74 {
    uint public _var;
    uint public _another = 0;
    function test1() public {
        uint e = _var*block.timestamp*block.timestamp + block.timestamp + block.timestamp;
        e = block.timestamp + e;
        e = block.timestamp + e;
    }
    function test2() public {
        uint e = _var*block.timestamp + _var*block.timestamp + block.timestamp + block.timestamp;
        e = block.timestamp + e;
    }
    function test3() public {
        uint e = _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + block.timestamp;
        e = block.timestamp + e;
    }
}
