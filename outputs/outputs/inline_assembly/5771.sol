pragma solidity ^0.8.0;
contract MutatedBlock2Mutation81 {
    uint public _var;
    uint public _another = 0;
    function test1() public returns (uint) {
        _var = 10 + _var*block.timestamp;
        return _var;
    }
    function test2() public returns (uint) {
        _var = 10 + _var*block.timestamp;
        return _var;
    }
    function test3() public returns (uint) {
        _var = 10 + _var*block.timestamp;
        return _var;
    }
    function test4() public returns (uint) {
        return 10;
    }
}
