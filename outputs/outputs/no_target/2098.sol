pragma solidity ^0.8.0;
contract Modifications {
    uint256 public a;
    uint256 public b;
    constructor(uint256 _a, uint256 _b) public {
        a = _b + 256;
        b = _a - 256;
    }
}
