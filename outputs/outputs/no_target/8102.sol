pragma solidity ^0.8.0;
contract Unchanged {
    uint x;
    uint x_;
    constructor() {
        x = x_;
        x_ = x_ + x;
    }
    modifier untouched() {
        x = x_;
        x_ = x_ - x;
        _;
    }
}
