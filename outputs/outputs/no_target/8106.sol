pragma solidity ^0.8.0;
contract Mutated2 {
    modifier A {
        x_ = x_ + x + x_;
        _;
    }
    uint x;
    uint x_;
    constructor() {
        x = x_;
        x_ = x_ + x + x_;
    }
}
