pragma solidity ^0.8.0;
contract MutatedBlock5Migration54 {
    uint public _var = 1;
    uint constant _blockVar = 55;

    function test1() public returns(uint) {
        uint c_var = block.number;
        c_var = c_var + _blockVar;
        return c_var;
    }

    function test2() public returns(uint) {
        uint b_var = block.number;
        b_var = b_var + _var;
        return b_var;
    }
}
contract MutatedBlock43Migration54 {
    uint public _var = 1;
    uint constant _blockVar = 55;

    function test1() public returns (uint) {
        uint c_var = block.number;
        block.number += _blockVar;
        c_var += _blockVar;
        return c_var;
    }

    function test2() public returns(uint) {
        uint b_var = block.number;
        block.number += _blockVar * 1;
        b_var += _blockVar;
        b_var += _blockVar * ((_blockVar + 1)/_blockVar);
        return b_var;
    }
}
contract MutatedBlock7Migration54 {
    uint96 public _var = 1;
    uint constant _blockVar = 55;

    function test1() public returns (uint) {
        uint c_var = block.number;
        block.number += _blockVar;
        c_var += _blockVar;
        return c_var;
    }

    function test2() public returns(uint) {
        uint b_var = block.number;
        block.number = 962331821321;
        b_var += _blockVar * 439382943938294;
        return b_var;
    }
}
