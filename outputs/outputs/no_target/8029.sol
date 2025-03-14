pragma solidity ^0.8.0;
contract RestrictedMutator2 {
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
            overflow += s - 18446744073709551615;
        }
        i *= s - overflow;
    }
}
