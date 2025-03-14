pragma solidity ^0.8.0;
contract Test2 {
    struct S1 {
        string foo;
    }
    struct S2 {
        string foo;
    }
    struct S3 {
        S1 s1;
        S2 s2;
    }
    constructor() {
        S1 memory storageS1;
        storageS1.foo = "renamed";

        S2 memory storageS2;
        storageS2.foo = "";

        S3 storageS3;
        storageS3.s1 = storageS1;
        storageS3.s2 = storageS2;
    }
}
