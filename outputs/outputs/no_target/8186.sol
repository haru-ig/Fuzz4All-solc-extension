pragma solidity ^0.8.0;
contract Mutated5c {
    uint x = 10 + 200;
    constructor() {
        x = x < 10? x : 10;
    }
}
