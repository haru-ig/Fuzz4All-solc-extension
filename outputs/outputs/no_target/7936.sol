pragma solidity ^0.8.0;
contract TestMutator4 {
    uint256 public x;
    uint256 public z;
    constructor () public {
        x = 0xdeadbeef;
        z = 1;
    }
    function set() public {
    x = x + (z * -1);
    }
    function set2() public {
    set();
    }
}
