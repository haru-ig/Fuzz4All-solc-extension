pragma solidity ^0.8.0;
contract MutatedBlock10Mutator5 {
    uint public _var;
    function test() public returns(uint) {
        _var = 1 + _var;
        return 1 + _var;
    }
}
