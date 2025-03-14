pragma solidity ^0.8.0;
contract OldRestrictedMutator {
    uint i;
    uint s1;
    uint s2;
    uint s3;
    uint s4;
    uint s5;
    uint s6;
    constructor () public {
        i = 1;
        s1 = 0.0;
        s2 = 18446744073709551615.0;
        s3 = 4294967295u;
        s4 = 4294967292u;
        s5 = 9007199254740991.799550601675062038584126;
        s6 = 1800000000000000000000000000000000000000000000000000000000000000;
    }
}
