pragma solidity ^0.8.0;
contract Removal {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    constructor(uint256 _b) public {
        b = _b - _b * uint256(type(uint256).max) / 8;
        a = a - (0x1 * _b);
        c = ((0x1 * _b) + a) / (a - 0x1000) / 8;
    }
}
