pragma solidity ^0.8.0;
contract Test33 {
    struct A {
        uint32[1] array;
    }
    function f() public pure returns (A memory) {
        A memory a;
        a = a;
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a;
        a.array = a.array;
        return a;
    }
    function f2() public pure returns (A memory) {
        A memory a;
        a = a;
        return a;
    }
}
