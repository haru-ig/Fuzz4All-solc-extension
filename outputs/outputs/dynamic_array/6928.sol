pragma solidity ^0.8.0;
contract Test1 {
    struct S1 {
        uint[42] bar;
        uint[42, 63][42] array;
    }
    constructor() {
        S1 memory storageS1;
        storageS1.array[0][0] = 0xBEEFDEADBEEFDEAD0000  ;
        storageS1.array[1][0] = 0xDEADBEEFDEADBEEFDE00  ;
        storageS1.bar = 0xFEEDBEADAFEFEDBEEFABBAE ;
    }
}
