pragma solidity ^0.8.0;
contract C {
    struct S {
        uint[] a;
    }
    S s;
    function f() public {
        s.a[0] = 1;
    }
}
