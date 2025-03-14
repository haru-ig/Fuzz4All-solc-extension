pragma solidity ^0.8.0;
contract MutatedBlock9Mutator4 {
    uint public _var = 1;
    function test() public returns(uint) {
        uint x = _var;
        x = 1 + _var;
        return x;
    }
}
