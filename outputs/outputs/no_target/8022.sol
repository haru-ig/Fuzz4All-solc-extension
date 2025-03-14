pragma solidity ^0.8.0;
contract DeprecatedRestrictedMutator3 {
    uint8 b;
    uint i;
    uint s;
    constructor (uint a) public {
        i = 1;
        uint8 overflow = 256;
        unchecked {
            b = uint8(a) - overflow;
        }
        i *= b + 1;
        b /= 256;
        i *= b + 1;
    }
}
