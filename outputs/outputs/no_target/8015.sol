pragma solidity ^0.8.0;
contract RestrictedMutator {
    address a;
    uint i;
    uint s;
    constructor () public {
        a = address(0x01);
        i = 1;
        uint overflow = 0;
        overflow = overflow - s + 60;
        i *= s - overflow;
    }
}
