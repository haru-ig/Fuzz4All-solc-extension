pragma solidity ^0.8.0;
contract MutatedBlock2Mutation75 {
    uint public _var;
    uint public _another = 0;
    function test1() public {
        uint e = _var * _another;
        e = block.timestamp * block.timestamp +
                block.timestamp * _var +
                _var * block.timestmp +
                _another * block.timestamp;
    }
    function test2() public {
        uint e = _var * _another;
        e = block.timestamp * block.timestamp + _var *
                _var + block.timestamp * block.timestamp + block.timestamp * _another;
    }
    function test3() public {
        uint e = _var * _another;
        e = block.timestamp * block.timestamp + _var * _var *
                block.timestamp + block.timestamp * block.timestamp +
                block.timestamp * block.timestamp + block.timestamp * _another;
    }
    function test4() public {
        uint e = _var * _another;
        e = block.timestamp * block.timestamp + _var * _var *
                block.timestamp + block.timestamp * block.timestamp +
                block.timestamp * block.timestamp +
                _var * _another;
    }
}
