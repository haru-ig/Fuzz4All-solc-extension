pragma solidity ^0.8.0;
contract Mutated5b {
    uint x = 10 * 200;
    constructor(uint x) {
        x = x > 200? x : 200;
    }
}
