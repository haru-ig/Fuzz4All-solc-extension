pragma solidity ^0.8.0;
contract CompatibleMutator2 {
    address a1;
    address a0;
    uint i;
    uint s;
    constructor () public {
        a0 = a1;
        a1 = address(0x01);
        i = 1;
        uint overflow = 0;
        s = s - s - 314;
        uint underflow = s / overflow;
        i *= s - s;
        i *= s - s + overflow - 2 ** (256 - 314);
    }
}
