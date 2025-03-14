pragma solidity ^0.8.0;
contract TestMutator5b {
    uint256 public x;
    uint256 public y;
    uint256 public z;
    constructor () public {
        x = 1;
        y = 2;
        z = 3;
    }
    function set(uint256 _value1) public {
    x = _value1;
    }
    function set2(uint256 _value2) public {
    y = _value2;
    }
    function set3() public {
            y = y + z;
    }
}
