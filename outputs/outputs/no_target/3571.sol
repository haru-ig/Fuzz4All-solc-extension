pragma solidity ^0.8.0;
contract m235 {
    uint256 public s = 0xffffffff;
    uint256 public i = s+1;
    uint256 public x;

    constructor(uint256 u) public {
        s += u;
        x += s;
        x++;
    }
}
