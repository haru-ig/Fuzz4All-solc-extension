pragma solidity ^0.8.0;
contract TestMutator3 {
    uint256 public x;
    constructor () public {
        x = 0xdeadbeef;
    }
    function set(uint256 _value) public {
    x = _value + x;
    }
    function set2() public {
    set(x);
    }
}
