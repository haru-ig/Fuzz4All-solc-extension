pragma solidity ^0.8.0;
contract Restricted {
    uint x;
    uint x_;
    constructor() {
        x = x_;
        x_ += x_;
    }
    modifier restricted() {
        x = x_;
        x_ -= x_;
        _;
    }
}
