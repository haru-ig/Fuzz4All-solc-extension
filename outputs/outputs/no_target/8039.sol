pragma solidity ^0.8.0;
contract RestrictedMutator3 {
    address a0;
    address a1;
    uint s;
    uint i;
    constructor () public {
        uint overflow = i;
        a1 = a0;
        uint wrapped = s - overflow;
        unchecked {
            overflow += i;
            a0 = address(0x7654);
            i ^= 1;
        }
        i /= s * wrapped;
        i += wrapped - 1;
    }
}
