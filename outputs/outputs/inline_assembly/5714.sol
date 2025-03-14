pragma solidity ^0.8.0;
contract MutatedBlock9Mutation6 {
    uint public _var = 1;
    function test() public pure returns(uint) {
        uint x;
        assembly {x := block.number}
        x = x - 1;
        x = x + 2;
        return x;
    }
}
uint x;
x = MutatedBlock9Mutation6.test();
