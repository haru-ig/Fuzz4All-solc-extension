pragma solidity ^0.8.0;
contract MutatedBlock9Mutator4 {
    uint public _var = 1;
    function test() public returns(uint) {
        uint x;
        x = block.number;
        x = _var + x;
        x = _var + x;
        return x;
    }
}
