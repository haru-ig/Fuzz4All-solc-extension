pragma solidity ^0.8.0;
contract Mutated6b {
    uint x = 10 * 200;
    constructor(uint x) {
        uint y = x / 200; y = x > y? x : y; y = x > x? x : y;
    }
}
