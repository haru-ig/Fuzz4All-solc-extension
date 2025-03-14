pragma solidity ^0.8.0;
contract MutatedBlock2Mutation81 {
    uint internal _var;
    uint internal _another = 0;
    function test1() public returns (uint) {
        _var = _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + _var*block.timestamp;
        return _var;
    }
    function test2() public returns (uint) {
        _var = _var*block.timestamp + _var*block.timestamp + _var*block.timestamp;
        return _var;
    }
    function test3() public returns (uint) {
        _var = _var*block.timestamp + _var*block.timestamp + _var*block.timestamp + _var*block.timestamp;
        return _var;
    }
    function test4() public returns (uint) {
        return _var;
    }
}
