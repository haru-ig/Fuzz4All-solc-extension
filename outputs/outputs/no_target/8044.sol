pragma solidity ^0.8.0;
contract RestrictedMutator {
    address a;
    uint i;
    constructor () public {
        a = address(0x7654);
        i = a - address(0x7654);
        a = a % 0x7890;
        i++;
        unchecked {
            a %= 0x4033;
        }
    }
}
