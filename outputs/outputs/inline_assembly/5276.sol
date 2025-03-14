pragma solidity ^0.8.0;
uint32 constant initIB = 9; uint8[8] memory p;
contract Q {
    uint32 IB;
    constructor() public {
        IB = IB + initIB * 40;
        p[0] = initIB;
        p[1] = initIB - 4;
        p[2] = initIB * 2;
        p[3] = initIB / 2;
        p[4] = initIB % 8;
    }
}
