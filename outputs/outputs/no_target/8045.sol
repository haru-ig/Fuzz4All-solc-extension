pragma solidity ^0.8.0;
contract RestrictedMutator4 {
    address a0;
    address a1;
    uint s;
    uint i;
    constructor () public {
        uint overflow = i;
        a1 = a0;
        uint wrapped = s - overflow;
        unchecked {
            overflow -= overflow + i * wrapped;
            i--;
        }
        i += wrapped - 1;
    }
}
