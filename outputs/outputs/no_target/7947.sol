pragma solidity ^0.8.0;
contract TestMutator5 {
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
    x > x + 1? x = 0 : x = x + 1;
    z > x? x = 0 : x = x + 1;
    }
}
