pragma solidity ^0.8.0;
contract MutatedBlock2Mutation214 {
    uint public _var;
    uint public _another = 0;
    function test1() public returns (uint) {
        uint e = _var*block.timestamp*block.timestamp + block.timestamp + block.timestamp;
        _var+=block.timestamp;
        e = block.timestamp + e;
        e = block.timestamp + e;
        return e;
    }
    function test2() public returns (uint) {
        uint x = 10;
        uint y = 0;
        uint e = x*block.timestamp + y*block.timestamp + block.timestamp + block.timestamp;
        _var*=x;
        e = block.timestamp + e;
        _var-=__var;
        e = block.timestamp + e;
        return e;
    }
    function test3() public returns (uint) {
        uint x = 12;
        uint y = 0;
        uint e = x*block.timestamp + y*block.timestamp + block.timestamp + block.timestamp;
        _var-=_var;
        e = block.timestamp + e;
        _var+=y;
        e = block.timestamp + e;
        return e;
    }
}
