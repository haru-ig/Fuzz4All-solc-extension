pragma solidity ^0.8.0;
contract Removal {
    uint256 public a = 0;
    uint256 public b;
    uint256 public c;
    constructor(uint256 _b) public {
        b = _b + (_b * uint256(type(uint256).max)) - a;
        a = a + (0x1 * _b) - (-b);
        c = ((0x1 * _b) + a) / (a - 0x1000);
    }
}
