pragma solidity ^0.8.0;
contract RestrictedMutator2 {
    address a0;
    address a1;
    uint s;
    uint i;
    uint x;
    uint x_;
    constructor () public {
        uint overflow = x_;
        a1 = a0;
        x = x + s + overflow;
        uint wrapped = s + x % s + x % x_ - 1;
        x_ = x - wrapped % x + x_ - wrapped % s + s * s - x + s + s;
        x = s - wrapped % x_ + x_;
    }
}
