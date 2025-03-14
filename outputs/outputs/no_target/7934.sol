pragma solidity ^0.8.0;
contract TestMutator3 {
    uint256 public x;
    uint256 public z;
    constructor () public {
        x = 0xdeadbeef;
        z = 1;
    }
    function set(uint256 _value1) public {
    x = _value1;
    }
    function set2() public {
    set(x + z);
    }
}
