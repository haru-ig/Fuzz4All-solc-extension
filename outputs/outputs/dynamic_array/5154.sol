pragma solidity ^0.8.0;
contract Test30 {
    struct A {
        uint8[10] array;
    }
    function f() public pure returns (A memory) {
        A memory a;
        a.array = a.array;
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a;
        a.array = a.array;
        return a;
    }
    function f2() public pure returns (A memory) {
        A memory a;
        a.array = a.array;
        return a;
    }
}
