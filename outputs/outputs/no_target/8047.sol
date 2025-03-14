pragma solidity ^0.8.0;
contract RestrictedMutator4 {
    contract C {
        uint i;
        address a0;
        address a1;
    }
    uint j;
    C c;
    constructor () public {
        C c01 = c;
        assembly {
            let p := mload(0x41414000)
            store(p+0x4000, add(i, s))
            store(p+0x4000, add(mload(p+0x4000), p))
        }
        c01.i = 7e18 * 10;
        c.a0 = address(c01);
        c = c01;
    }
}
