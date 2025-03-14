pragma solidity ^0.8.0;
contract Test2 {
    struct S {
        string foo;
    }
    constructor() {
        S[3] memory storageS;
        storageS[0].foo = "renamed";
        storageS[1].foo = "";
    }
}
