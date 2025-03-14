pragma solidity ^0.8.0;
contract MutatedBlock2Mutation102 {
    uint public _var;
    uint public _another = 1;
    function test1() public {
        uint e = _var*block.timestamp*block.timestamp*block.timestamp*block.timestamp + block.timestamp*block.timestamp + block.timestamp + 10000000000;
        e = block.timestamp + e;
        e = block.timestamp + e;
        e = block.timestamp + e;
        e = _var*block.timestamp*block.timestamp*block.timestamp*block.timestamp;
    }
    function test2() public {
        uint e = _var*block.timestamp*block.timestamp*block.timestamp + _var*block.timestamp*block.timestamp*block.timestamp + block.timestamp + _var*block.timestamp*block.timestamp + block.timestamp + 10000000000;
        e = block.timestamp + e;
        e = block.timestamp + e;
        e = block.timestamp + e;
        e = _var*block.timestamp*block.timestamp*block.timestamp + _var*block.timestamp*block.timestamp;
    }
    function test3() public {
        uint e = _var*(block.timestamp*block.timestamp*block.timestamp) + _var*block.timestamp + block.timestamp*block.timestamp + block.timestamp + _var[4]*_another + block.timestamp*block.timestamp;
        e = block.timestamp + e;
        e = block.timestamp + e;
        e = block.timestamp + e;
        e = _var + _another*block.timestamp + _another*_another*block.timestamp + block.timestamp + block.timestamp*block.timestamp*block.timestamp;

    }
}
