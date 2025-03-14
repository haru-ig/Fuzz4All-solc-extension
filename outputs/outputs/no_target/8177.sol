pragma solidity ^0.8.0;
contract Mutated5b {
    uint y = 10 / 200;
    constructor(uint _n) {
        y = 100 / _n;
    }
}
