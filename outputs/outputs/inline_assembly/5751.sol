pragma solidity ^0.8.0;
contract MutatedBlock2Mutation75 {
    uint public _another = 0;
    uint public _var;
    function test1() public {
        uint e = _another + 1 + 1;
        e += _var;
        e += _another;
        e += _var;
    }
    function test2() public {
        uint e = 1 + 1;
        e += _var;
        e += _another;
        e += _var;
    }
    function test3() public {
        uint e = 1 + 1;
        e += _var;
        e += _another;
        e += _another;
    }
    function test4() public {
        uint e = _var + _var;
        e += _var;
        e += _another;
        e += _var;
    }
}
