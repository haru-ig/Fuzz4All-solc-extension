pragma solidity ^0.8.0;
contract MutatedBlock2Mutation75 {
    uint public _another = 0;
    function test1() private returns (uint) {
        uint _var = 1000000*block.timestamp*block.timestamp + _another*block.timestamp + 1000*block.timestamp;
        uint _var1 = block.timestamp*block.timestamp + _var*block.timestamp + _another*block.timestamp;
        uint _var2 = block.timestamp*block.timestamp + _var*block.timestamp + _var2*block.timestamp + _another*block.timestamp;
        uint _var3 = _var*block.timestamp*block.timestamp + _var2*block.timestamp + _another*block.timestamp + _another*block.timestamp;
        uint _var4 = _var4*block.timestamp + _var3*block.timestamp + _var_2*block.timestamp + _another*block.timestamp;
        uint _var5 = 1000000*block.timestamp*block.timestamp + _another*block.timestamp + 1000*block.timestamp;
