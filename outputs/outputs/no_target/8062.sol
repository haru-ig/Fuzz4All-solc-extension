pragma solidity ^0.8.0;
contract RestrictedMutator4 {
    address a0;
    address a1;
    uint s;
    uint i;
    uint x;
    uint __;
    uint x_;
    constructor () public {
        uint overflow = x_;
        uint wrapped = s - x;
        uint clamped = x - s + wrapped & x - s + 1;
        uint s0 = s - wrapped;
        a1 = a0;
        x = clamped & s0 + s0 + s0 + 1;
        x_ = x - wrapped;
        __ = 1;
    }
}
