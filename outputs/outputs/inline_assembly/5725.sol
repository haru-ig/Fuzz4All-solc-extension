pragma solidity ^0.8.0;
contract MutatedBlock5Mutation54 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint c = block.number + 1;
        return c;
    }
}
contract MutatedBlock2Mutation54 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint b = block.number + 1;
        return b * b;
    }
}
