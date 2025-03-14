pragma solidity ^0.8.0;
contract RestrictedMutator2 {
    uint i;
    uint s;
    constructor () public {
        i = 1;
        unchecked {
            i *= s - 18446744073709551615;
        }
    }
}
