pragma solidity ^0.8.0;
contract Test35 {
    struct A {
        uint32[3][2][4] d;
    }
    A a;
    function f() public pure {
        a.d[2][0][0] = a.d[2][3][0];
    }
}
