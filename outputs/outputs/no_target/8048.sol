pragma solidity ^0.8.0;
contract RestrictedMutator {
    address a0;
    uint i;
    constructor () public {
        uint wrapped = i;
        a0 = bignum_overflow(a0, wrapped);
        a0 = wrap2(a0);
        a0 = wrap2(a0);

    }
}
