pragma solidity ^0.8.0;
contract Mutate14 {
    uint128 public x;
    uint8 public constant y = 10;
    constructor(uint8 s) public {
        x += s;
    }
}
