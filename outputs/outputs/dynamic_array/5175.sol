pragma solidity ^0.8.0;
contract Test33 {
    struct A {
        uint32 a;
        uint32 b;
        uint32[3] array;
    }
    function f() public pure returns (A memory) {
        A memory a;
        a = a;
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a;
        a.a = a.b;
        return a;
    }
}
