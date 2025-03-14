pragma solidity ^0.8.0;
contract Test2 {
    struct S {
        S memory o;
        mapping (uint) bar;
    }
    constructor() {
        S memory storageS;
        storageS.o.bar[0] = storageS;
    }
}
