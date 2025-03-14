pragma solidity ^0.8.0;
contract MutatedBlock2Mutation74 {

    uint public _var = 1;
    function test1() public view returns (uint) {
        uint e = block.timestamp*block.timestamp;
        return block.timestamp + e;
    }
    function test2() public view returns (uint) {

        uint e = block.timestamp*block.timestamp + block.timestamp;
        return block.timestamp + e;
    }
    function test3() public view returns (uint) {

        uint e = block.timestamp*block.timestamp + block.timestamp + block.timestamp;
        return block.timestamp + e;
    }
}
