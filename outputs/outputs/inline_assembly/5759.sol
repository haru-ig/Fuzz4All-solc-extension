pragma solidity ^0.8.0;
contract MutatedBlock2Mutation67 {
    uint public _var;
    uint public _another;
    function test1() public returns (uint) {
        uint e = _var + 2 * _var + 3 * _var + 2 * _var;
        e += 2 * _var;
        e += _var;
        return e;
    }
    function test2() public returns (uint) {
        uint e = _var + _var + _var + _var;
        e += _var;
        e += _var;
        e += _var;
        return e;
    }
    function test3() public returns (uint) {
        uint e = _var + _var + _var + _var + _var;
        e += _var;
        e += _var;
        return e;
    }
}


contract MutatedBlock2Mutation23 {
    uint public _var;
    function test() public {
        uint c = _var + 2 * _var;
        c += 2 * _var;
        asm {

            _var = add(_var, 2);
        }
    }
}
