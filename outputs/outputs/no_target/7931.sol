pragma solidity ^0.8.0;
contract TestMutator1 {
    uint256 public x;
    constructor () public {
        x = 0xdeadbeef;
    }
    function set(uint256 _value) public {
    x = _value == 0xdeadbeef? x : x + 1;
    }
    function set2() public {
    set(x);
    }
}
