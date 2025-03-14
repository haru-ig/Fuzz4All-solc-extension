pragma solidity ^0.8.0;
contract Test2 {
    struct S2 {
        string foo;
        uint[42] bar;
    }
    constructor() {
        uint[42] memory storageT;
        storageT[0] = 0xDEAD800000000000000000000000000000000;
        storageT[1] = 0xDEADBEEF000000000000000000000000000000;
        S2 memory storageS2;
        storageS2.foo = "";
        storageS2.bar = storageT;
    }
}
