pragma solidity ^0.8.0;
contract MutatedBlock9Mutation4 {
    uint public _var = 1;
    function test() public returns(uint) {
        uint x;
        x = block.number;
        x = x + 1;
        x = x + x;
        return x;
    }
}
