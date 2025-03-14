pragma solidity ^0.8.0;
contract DeprecatedRestrictedMutator2 {
    address a1;
    address a0;
    uint i;
    uint s;
    constructor () public {
        ((address(0x01)));
        address a00 = address(0x01);
        address temp;
        a0 = a1;
        a1 = a00;
        i = 1;
        uint overflow = 0;
        unchecked {
            overflow += s - 18446744073709551615;
        }
        i *= s - overflow;
    }
}
