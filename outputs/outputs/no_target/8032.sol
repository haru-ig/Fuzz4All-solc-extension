pragma solidity ^0.8.0;
contract RestrictedMutator3 is RestrictedMutator2 {
    uint public j;
    constructor () public {
        address a = 0x01;
        a1 = a - 1;
        a1 = a1 + 1;
        a0 = 0;
        s = 1;
        i -= 1;
        j = i;
    }
}
