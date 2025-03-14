pragma solidity ^0.8.0;
contract TestMutator3 {
    function set(uint256 _value) public {
    x = x + _value;
    }
    uint256 public x;
    constructor () public {
        x = 0xdeadbeef;
    }
}
