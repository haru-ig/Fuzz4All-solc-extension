pragma solidity ^0.8.0;
contract MutatedBlock1Mutation54 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint b = block.number;
        return b * b;
    }
}
