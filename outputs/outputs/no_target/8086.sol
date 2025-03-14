pragma solidity ^0.8.0;
contract Restricted {
    uint x;
    uint x_;
    int m;
    int n;
    constructor() {
        x = x_;
        x_ += x_;
        m = 2**uint(x_);
        n = int(x_);
    }
    modifier restricted() {
        x = x_;
        x_ += x_;
        m >>= 1;
        n >>= 1;
        _;
    }
}
