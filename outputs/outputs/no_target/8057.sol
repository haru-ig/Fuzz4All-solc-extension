pragma solidity ^0.8.0;
contract RestrictedMutator3 {
    address a0;
    address a1;
    uint s;
    uint i;
    uint x;
    uint x_;
    constructor () public {
        uint overflow = x_;
        a1 = a0;
        x = x + s - overflow;
        uint wrapped = s - x;
        x = x + s + wrapped % x + x - s + 1;
        x_ = x - wrapped;
    }
}
