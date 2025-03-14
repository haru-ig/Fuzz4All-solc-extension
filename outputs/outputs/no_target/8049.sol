pragma solidity ^0.8.0;
contract RestrictedMutator4 {
    address a0;
    address a1;
    uint s;
    uint i;
    uint x;
    uint x_;
    constructor () public {
        uint overflow = x_;
        a1 = a0;
        uint wrapped = s - x;
        x = x_;
        unchecked {
            x = wrapped;
            s /= x - overflow;
            overflow += x;
            a0 = address(0x7654);
            i ^= 1;
        }
        x_ = x - wrapped;
        x_ %= x + 1;
    }
}
