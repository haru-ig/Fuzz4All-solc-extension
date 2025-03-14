pragma solidity ^0.8.0;
contract MutatedBlock1Mutation90 {
    uint public _var;
    uint public _another;
    constructor(uint x) {
        _var = x;
        _another = 1;
    }
    function test1() public returns (uint) {
        _var = _var*1777216;
        return _var;
    }
}
