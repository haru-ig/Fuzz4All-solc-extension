pragma solidity ^0.8.0;
contract Removal {
    uint256 public constant a = 0x1000000000000000000000000000000;
    uint256 public constant b = 0x40000000000000000000000000000;
    uint256 public constant c = 0x10000c;
    constructor(uint256 _b) public {
        b = _b - _b * uint256(a);
        a = a - (0x1 * _b);
        c = ((0x1 * _b) + a) / (a - 0x1000);
    }
}
