pragma solidity ^0.8.0;


contract MutatedBlock2Mutation73 {
    uint public _var;

    function test() public view returns() {
        uint e = block.timestamp + 1;

        return block.timestamp;
    }
}
