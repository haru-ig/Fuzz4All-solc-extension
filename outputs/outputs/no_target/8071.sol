pragma solidity ^0.8.0;
contract RestrictedMutator {
    address a0;
    address a1;
    uint s;
    uint x;
    uint x_;
    constructor () public {
        a1 = a0;
        x = x_;
        uint wrapped = add(x_ + x, x_) % x;
        x_ = sub(x_, wrapped / x);
    }
    function add (uint a, uint b) pure public returns(uint) {
        return a + b;
    }
    function sub (uint a, uint b) pure public returns(uint) {
        return a - b;
    }
}
