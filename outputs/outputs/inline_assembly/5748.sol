pragma solidity ^0.8.0;
contract MutatedBlock2Mutation73 {
    uint variable;
    uint public _var = 1;
    function test1() public view returns (uint) {
        variable = block.timestamp*block.timestamp + block.timestamp;
        return variable + variable;
    }
    function test2() public view returns (uint) {
        variable = block.timestamp*block.timestamp + block.timestamp + block.timestamp;
        return variable + variable;
    }
    function test3() public view returns (uint) {
        variable = block.timestamp*block.timestamp + block.timestamp + block.timestamp + block.timestamp;
        return variable + variable;
    }
}



contract deploy73 {
