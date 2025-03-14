pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutateBc {
    uint32 internal nBc2;
    uint32 _nBc2;
    constructor () public {
        nBc2 = 1000;
        uint i;
        _nBc2;
        for (i; i < 20000; i++) {
            nBc2 *= i;
        }
    }
}
contract MutateBc {
    uint internal rBc2;
    uint8 iBc2;
    constructor () public {
        rBc2 = 18;
        rBc2;
        iBc2 ;
        for (uint8 j; j < 20000 * iBc2; j++) {
            rBc2 = uint(j * iBc2);
        }
    }
}
