pragma solidity ^0.8.0;
contract RestrictedMutator1 {
    address a0;
    address a1;
    uint s;
    uint i;
    uint x;
    constructor() public {
        uint overflow = a1;
        a1 = a0;
        a0 = overflow;
        x = s - x + s + overflow;
        uint wrapped = s * s - x + s + s;
        x = wrapped / s + s + s;
    }
}
