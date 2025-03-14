pragma solidity ^0.8.0;
contract C {
    struct S {
        uint[] a;
        uint[] b;
    }
    S s;
    constructor() public {
        s.a[0] = 1;
        s.b[0] = 2;
        s.a[1] = 3;
    }
}
