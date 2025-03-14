pragma solidity ^0.8.0;
contract C {
    struct S {
        uint[] a;
    }
    S s;
    constructor() public {

        s.a[s.a.length] = 1;
    }
}
