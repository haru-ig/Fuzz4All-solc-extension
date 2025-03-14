pragma solidity ^0.8.0;
contract RestrictedMutator1 {
    address a0;
    address a1;
    uint s;
    uint i;
    constructor () public {
        uint r = 1 / s^i & 2;
        s += s >> s % r;
        i -= -i >> i * 0x213;
        a1 = a0;
    }
}
