pragma solidity ^0.8.0;
contract MutatedBlock9Mutation5 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x;
        x = block.number;
        x = x - 1;
        x = x + 2;
        return x;
    }
}
