pragma solidity ^0.8.0;
contract Test3 {
    struct S {
        string[] bar;
    }
    constructor() {
        S storageS;
        for (uint i = 0; i < 10; i++) {
            storageS.bar.push("");
        }
        storageS.bar.pop();
    }
}
