pragma solidity ^0.8.0;
contract Removal {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    constructor(uint256 _b) public {
        b = _b;
        a = a + int256(0x800000000000000000000000000000000000000000000000000000000000000);
        c = 0;
    }
}
