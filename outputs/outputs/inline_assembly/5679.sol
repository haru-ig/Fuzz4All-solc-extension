pragma solidity ^0.8.0;
contract MutatedBlock10Mutator5 {
    uint public _var = 1;
    constructor(address user_address) {}
    function test() public returns(uint) {
        uint x;
        x = _var + user_address;
        x = user_address + 1;
        _var = x + 1;
        return x;
    }
}
