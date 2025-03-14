pragma solidity ^0.8.0;
contract MutatedBlock9Mutator5 {
    uint public _var = 1;


    function test() public returns(uint) {
        uint x;
        x = block.number;
        x = x + uint256(1);
        x = x + x;
        return x;
    }
}
