pragma solidity ^0.8.0;
contract RestrictedMutator2 {
    address a0;
    address a1;
    uint s;
    uint i;
    constructor () public {
        a1 = address(0x01);
        a0 = address(this);
        s = 1;
        i = 18446744073709551615;
    }
}
