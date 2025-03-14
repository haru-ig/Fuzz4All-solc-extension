pragma solidity ^0.8.0;
contract Test98 {
    struct A {
        struct B {
            uint8[10] array;
        }
        B b;
    }
    function f() public pure returns (A memory) {
        A memory a;
        a.b.array = a.b.array;
        return a;
    }
}
