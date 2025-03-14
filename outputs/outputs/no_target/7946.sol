pragma solidity ^0.8.0;
contract TestMutator5 {
    uint256 public x;
    uint256 public z;
    constructor () public {
        x = 0;
        z = 11;
    }
    function set(uint256 _value) public {
    x = _value;
    }
    function set2() public {
    x < x? x = x + 1 : x = 0x876543210;
    z < x? x = x - 1 : x = 0x8765432100;
    }
}
