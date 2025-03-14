pragma solidity ^0.8.0;
contract Test3 {
    struct S {
        string foo;
    }
    object StorageObject {
        S memory storageS;
        S storage storageSS;
    }
    constructor(string memory foo) {
        StorageObject.storageS.foo = foo;
        StorageObject.storageSS.foo = foo;
    }
}
