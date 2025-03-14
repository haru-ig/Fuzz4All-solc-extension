pragma solidity ^0.8.0;
contract Test1 {
    struct S {
        string foo;
        string bar;
    }
    constructor() {
        S[3] memory storageS;
        storageS.foo = string(abi.encodePacked(storageS.foo));
        storageS.bar = string(abi.encodePacked(storageS.bar));
    }
}
