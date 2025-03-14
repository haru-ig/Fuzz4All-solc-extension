pragma solidity ^0.8.0;
contract DeprecatedRestrictedMutator1 {
    uint i;
    uint s;
    constructor () public {
        i = 1;
        uint overflow;
        unchecked {
            overflow += s - 18446744073709551615;
        }
        i *= s - overflow;
    }
}
