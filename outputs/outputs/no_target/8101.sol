pragma solidity ^0.8.0;
contract Mutated {
    uint x;
    uint x_;
    constructor() {
        x = x_;
        x_ = 3*x;
    }
    modifier mutated() {
        x = x_;
        x_ = x_ + x;
        _;
    }
}
