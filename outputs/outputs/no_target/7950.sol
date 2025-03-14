pragma solidity ^0.8.0;
contract TestMutator6 {
    uint256 public x;
    uint256 public z;
    constructor () public {
        x = 0xdeadbeef;
        z = 1;
    }
    function set1(uint256 _value1) public {
        x = _value1;
    }
    function set2() public {
        assert(x > x+1);
        x = x + 1;
    }
}
