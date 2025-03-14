pragma solidity ^0.8.0;
contract MutatedBlock9Mutation25 {
    uint public _var;
    uint public _var1;

    function test() public returns(uint){
        _var1 = block.number;
        _var = _var1 - 1;
        _var1 = _var1 + 2;
        return _var;
    }
}
