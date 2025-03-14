pragma solidity ^0.8.0;
contract M11{
    mapping (uint16 => bool) public x;
    uint16 public y;
    uint16 public z;

    function M11() public {
        y = 1;
    }
    constructor () public {
        z = z * 3;
    }
}
