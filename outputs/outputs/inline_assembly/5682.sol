pragma solidity ^0.8.0;
contract MutatedBlock9Mutator5 {
    uint public _var = 1;
    function test() public returns(uint) {
        uint x;
        x += 1;
        x += 1;
        return x;
    }
}
