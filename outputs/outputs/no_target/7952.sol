pragma solidity ^0.8.0;
contract TestMutator6 {
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
    x = (x > x + 1)? 0 : x + 1;
    x = (x > x + 1)? 0 : x + 1;
    x > x + 1? y = 0 : x = x + 1;
    z > x? y = 0 : x = x + 1;
    x = (x > x + 1)? 0 : x + 1;
    }
}
