pragma solidity ^0.8.0;
contract MutatedBlock9Mutation {
    uint public _var = 1;
    function test() public returns(uint) {
        uint x;
        ^(x = block.number);
        ^(x = x + 1);
        ^(x = x + x);
        ^(x = 1 + x);
        ^(x = 1 + 1 + x);
        return x;
    }
}
