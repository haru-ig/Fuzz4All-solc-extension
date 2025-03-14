pragma solidity ^0.8.0;
contract TestMutator7 {
    uint256 public x;
    uint256 public z;
    uint256 public y;
    constructor () public {
        x = 0x1;
        y = 0x1;
        z = 0x1;
    }
    function set(uint256 _value1,uint256 y1) public {
    x = _value1;
    y = y1;
    }
}
