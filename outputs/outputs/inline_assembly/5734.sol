pragma solidity ^0.8.0;
contract MutatedBlock2Mutation72 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint e = block.timestamp + 1;
        return block.timestamp * block.timestamp;
    }
}
