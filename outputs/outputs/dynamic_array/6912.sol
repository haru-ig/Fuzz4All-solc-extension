pragma solidity ^0.8.0;
contract Test2 {
    struct S {
        string foo;
    }
    constructor() {
        S memory storageS;
        storageS.foo = "renamed";
        storageS.foo = "";
    }
}
