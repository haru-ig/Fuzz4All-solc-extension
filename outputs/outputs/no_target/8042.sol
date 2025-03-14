pragma solidity ^0.8.0;
contract RestrictedMutator4 {
    address a0;
    address a1;
    uint s;
    uint i;
    constructor () public {
        unchecked {
            uint wrapped = s;
            overflow += i;
        }
        i /= s * wrapped;
        i += wrapped - 7;
    }
}
