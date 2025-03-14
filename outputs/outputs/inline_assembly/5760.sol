pragma solidity ^0.8.0;
contract MutatedBlock2Mutation80 {
    uint public _var;
    uint public _another = 0;
    function test1() public returns (uint) {
        uint e = _var*block.timestamp + _var*block.timestamp*block.timestamp*1000;
        e = block.timestamp + e;
        e = block.timestamp + e;
        return e;
    }
    function test2() public returns (uint) {
        uint e = _var*block.timestamp + _var*block.timestamp*block.timestamp*1000 + _var*block.timestamp;
        e = block.timestamp + e;
        e = block.timestamp + e;
        return e;
    }
    function test3() public returns (uint) {
        uint e = _var*block.timestamp + _var*block.timestamp*block.timestamp*1000 + _var*block.timestamp*1000;
        e = block.timestamp + e;
        e = block.timestamp + e;
        return e;
    }
}

pragma solidity ^0.8.0;
contract MutatedBlock2Mutation85 {
    uint public _var;
    uint public _another = 0;
    function test1() public returns (uint) {
        uint e = _var*block.timestamp + _var*block.timestamp*block.timestamp;
        e = block.timestamp + e;
        e = block.timestamp + e;
        return e;
    }
    function test2() public returns (uint) {
        uint e = _var*block.timestamp + _var*block.timestamp*100 + _var*block.timestamp;
        e = block.timestamp + e;
        e = block.timestamp + e;
        return e;
    }
    function test3() public returns (uint) {
        uint e = _var*block.timestamp + _var*block.
