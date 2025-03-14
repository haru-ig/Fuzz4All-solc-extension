pragma solidity ^0.8.0;
contract Test32 {
    struct A {
        uint8[2] array;
    }
    function f() public pure returns (A memory) {
        return A(a: a);
    }
    function g() public pure returns (A memory) {
        return A(a.array: a.array);
    }
    function f2() public pure returns (A memory) {
        return A(a.array: a.array);
    }
}
