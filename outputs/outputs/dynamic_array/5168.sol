pragma solidity ^0.8.0;
contract Test34 {
    struct A {
        uint8[2] array;
    }
    function f() public pure returns (A memory) {
        A memory a = A(0);
        a = A(0);
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a = A(0);
        a.array = A(0);
        return a;
    }
    function f2() public pure returns (A memory) {
        A memory a = A(0);
        a = A(0);
        return a;
    }
}
