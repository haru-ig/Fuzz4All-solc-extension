pragma solidity ^0.8.0;
contract Mutated {
    uint x;
    uint x_;
    constructor() internal {
        x = x_;
        x_ = x_ + x;
    }
}
