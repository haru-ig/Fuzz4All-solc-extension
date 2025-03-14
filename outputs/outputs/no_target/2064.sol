pragma solidity ^0.8.0;
contract Removal {
    uint256 public a;
    uint256 public b;
    constructor(uint256 _b) public {
        b = _b;
        a = a / 8;
    }
}
