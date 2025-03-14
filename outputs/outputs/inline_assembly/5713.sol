pragma solidity ^0.8.0;
contract MutatedBlock9Mutation53 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x = block.number;
        x = x + 1;
        return x;
    }
}
contract MutatedBlock9Mutation52 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x = block.number;
        x = 0;
        x = x + 10;
        return x;
    }
}
