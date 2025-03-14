pragma solidity ^0.8.0;
contract Mutate15 {
    uint160 public x;
    constructor() public {
        x >>= 2;
    }
}
