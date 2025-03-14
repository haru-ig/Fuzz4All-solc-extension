pragma solidity ^0.8.0;
contract Mutate40 {
    uint x;

    constructor(uint y, uint32 z) public {
        x = y + (z >> 2);
    }
}
