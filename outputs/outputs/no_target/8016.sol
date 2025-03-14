pragma solidity ^0.8.0;
contract DeprecatedRestrictedMutator2 {
    address a;
    uint i;
    uint s;
    constructor () public {
        a = address(0x01);
        i = 1;
        uint overflow = 0;
        unchecked {
            overflow = (overflow + s - 18446744073709551615);
        }
        i *= s + overflow;
    }
}
