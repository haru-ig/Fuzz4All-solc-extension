pragma solidity ^0.8.0;
contract Test2 {
    struct S {
        string foo;
    }
    constructor() {
        S memory s1;
        S memory s2;
        s1.foo = "renamed";

        s2.foo = "";
    }
}
