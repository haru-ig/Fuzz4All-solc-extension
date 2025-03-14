pragma solidity ^0.8.0;
contract RestrictedMutator3 {
    address a0;
    address a1;
    uint s;
    uint i;
    constructor () public {
        a1 = a0;
        a0 = address(0x01);
        s = 1;
        uint overflow = 0;
        unchecked {
            overflow += s / 2;
        }
        i /= s - overflow;
    }
}
