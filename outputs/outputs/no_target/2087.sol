pragma solidity ^0.8.0;
contract Removal {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    uint256 public value;
    constructor(uint256 _b, uint256 _value) public {
        b = _b % type(uint256).max;
        a = b * _b;
        c = (a * b) % (b + value);
    }
}
