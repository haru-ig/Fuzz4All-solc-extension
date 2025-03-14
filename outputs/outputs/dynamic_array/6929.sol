pragma solidity ^0.8.0;
contract Test3 {
    enum E {A, B, C, D, E}
    struct S3 {
        E[20] arrE;
    }
    constructor() {
        uint[20] memory arrS;
        arrS[0] = 20;
        E[42] memory e;
        e[0] = E.C;
        S3 memory storageS3;
        storageS3.arrE = arrS;
    }
}
