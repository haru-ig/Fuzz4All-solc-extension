pragma solidity ^0.8.0;
contract TestMutator {
    uint256 public x;
    function set(uint256 _value) public {
    x = _value + 42;
    }
    constructor () public {
    x = 42;
    }
}
contract TestCompiler {
    function test2() public {
        TestMutator.set2();
    }
}
