pragma solidity ^0.8.0;
contract Mutate15 {
    uint128 public x;
    uint8 public constant y = 10;
    constructor(uint8 s) public {
        x = 0;
        x += s;
    }
}
