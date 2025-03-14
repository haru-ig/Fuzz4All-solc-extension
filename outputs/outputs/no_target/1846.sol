pragma solidity ^0.8.0;
contract Mutate15 {
    uint128 public x;
    uint8 public constant y = 10;
    uint128 public z = 10;
    uint8 public constant z1 = 20;
    constructor(uint128 s) public {
        x += s;
    }
}
